# playful

* [Homepage](http://github.com/turboladen/playful)
* [UPnP Device Architecture Documentation](http://upnp.org/specs/arch/UPnP-arch-DeviceArchitecture-v1.0.pdf)
* previously `upnp`


[<img src="https://travis-ci.org/turboladen/playful.png?branch=master"
alt="Build Status" />](https://travis-ci.org/turboladen/playful) [<img
src="https://coveralls.io/repos/turboladen/playful/badge.png" alt="Coverage
Status" />](https://coveralls.io/r/turboladen/playful)

## Description

Ruby's UPnP RubyGem was outdated in Ruby 1.9 when support for Soap4r was
dropped.  This gem intends to fill that void for Ruby >= 1.9 and allow for
SSDP search, discovery, advertisement, the ability to act as a UPnP control
point, as well as provide UPnP devices and services.

This uses [EventMachine](http://github.com/eventmachine/eventmachine), so if
you're not already, getting familiar with its concepts will be helpful here.

### Er, what's UPnP??

"Universal Plug and Play" is a mashup of network protocols that let network
devices identify themselves and discover and use each other's services.
Common implementations of UPnP devices are things like:

* [Media Servers and Clients](http://en.wikipedia.org/wiki/List_of_UPnP_AV_media_servers_and_clients) like...
    * PS3
    * Slingbox
    * Xbox
    * XBMC
    * Plex
    * VLC
    * Twonky
    * Mediatomb
* Home Automation
    * Philips Hue


If you have a device that implements UPnP, you can most likely control it
programmatically with `playful`.  You can't today, but eventually you'll be
able to build your own devices & services with `playful` that can be consumed
by other UPnP clients (ex. build a media server with playful and listen on
your PS3...).

## Features

### Implemented

* SSDP search, discovery. (almost settled down)
* Ability to act as a UPnP Control Point. (in progress)
* Rack middleware to allow for device access in a Rack app.


### Coming

* UPnP Devices & Services (server)


## Examples

Take a look at the `tasks` directory; I've created some working examples using
[Thor](https://github.com/wycats/thor).  You can get a list of these tasks by
doing `thor -T`.

There's also a more involved, in-progress, working example at
http://github.com/turboladen/upnp_cp_on_sinatra that uses the Rack middleware
to build a Sinatra app that allows for controling devices in your network.

### SSDP Searches

An SSDP search simply sends the M-SEARCH out to the multicast group and
listens for responses for a given (or default of 5 seconds) amount of time.
The return from this depends on if you're running it within an EventMachine
reactor or not. If not, it returns is an Array of responses as Hashes, where
keys are the header names, values are the header values.  Take a look at the
SSDP.search docs for more on the options here.

```ruby
require 'playful/ssdp'

# Search for all devices (do an M-SEARCH with the ST header set to 'ssdp:all')
all_devices = Playful::SSDP.search                         # this is default
all_devices = Playful::SSDP.search 'ssdp:all'              # or be explicit
all_devices = Playful::SSDP.search :all                    # or use short-hand

# Search for root devices (do an M-SEARCH with ST header set to 'upnp:rootdevices')
root_devices = Playful::SSDP.search 'upnp:rootdevices'
root_devices = Playful::SSDP.search :root                  # or use short-hand

# Search for a device with a specific UUID
my_device = Playful::SSDP.search 'uuid:3c202906-992d-3f0f-b94c-90e1902a136d'

# Search for devices of a specific type
my_media_server = Playful::SSDP.search 'urn:schemas-upnp-org:device:MediaServer:1'

# All of these searches will return something that looks like
# => [
#      {
#         :control => "max-age=1200",
#         :date => "Sun, 23 Sep 2012 20:31:48 GMT",
#         :location => "http://192.168.10.3:5001/description/fetch",
#         :server => "Linux-i386-2.6.38-15-generic-pae, UPnP/1.0, PMS/1.50.0",
#         :st => "upnp:rootdevice",
#         :ext => "",
#         :usn => "uuid:3c202906-992d-3f0f-b94c-90e1902a136d::upnp:rootdevice",
#         :length => "0"
#       }
#     ]
```

If you do the search inside of an EventMachine reactor, as the
Playful::SSDP::Searcher receives and parses responses, it adds them to the
accessor #discovery_responses, which is an EventMachine::Channel.  This lets
you subscribe to the resposnes and do what you want with them (most likely
you'll want to create Playful::ControlPoint::Device objects so you can control
your device) as you receive them.

```ruby
require 'playful/ssdp'
require 'playful/control_point/device'

EM.run do
  searcher = Playful::SSDP.search 'uuid:3c202906-992d-3f0f-b94c-90e1902a136d'

  # Create a deferrable object that can be notified when the device we want
  # has been found and created.
  device_controller = EventMachine::DefaultDeferrable.new

  # This callback will get called when the device_creator callback is called
  # (which is called after the device has been created).
  device_controller.callback do |device|
    p device.service_list.first.class                 # Playful::ControlPoint::Service
    p device.service_list.first.service_type          # "urn:schemas-upnp-org:service:ContentDirectory:1"

    # SOAP actions are converted to Ruby methods--show those
    p device.service_list.first.singleton_methods     # [:GetSystemUpdateID, :Search, :GetSearchCapabilities, :GetSortCapabilities, :Browse]

    # Call a SOAP method defined in the service.  The response is extracted from the
    # XML SOAP response and the value is converted from the UPnP dataType to
    # the related Ruby type.  Reponses are always contained in a Hash, so as
    # to maintain the relation defined in the service.
    p device.service_list.first.GetSystemUpdateID     # { :Id => 1 }
  end

  # Note that you don't have to check for items in the Channel or for when the
  # Channel is empty: EventMachine will pop objects off the Channel as soon as
  # they're put there and stop when there are none left.
  searcher.discovery_responses.pop do |notification|

    # Playful::ControlPoint::Device objects are EventMachine::Deferrables, so you
    # need to define callback and errback blocks to handle when the Device
    # object is done being created.
    device_creator = Playful::ControlPoint::Device.new(ssdp_notification: notification)

    device_creator.errback do
      puts "Failed creating the device."
      exit!
    end

    device_creator.callback do |built_device|
      puts "Device has been created now."

      # This lets the device_controller know that the device has been created,
      # calls its callback, and passes the built device to it.
      device_controller.set_deferred_status(:succeeded, built_device)
    end

    # This actually starts the Device creation process and will call the
    # callback or errback (above) when it's done.
    device_creator.fetch
  end
end
```

### ControlPoints

If you're wanting to control devices and their services, you'll probably be
more interested in using a Playful::ControlPoint, instead of doing all that
work (above) to create a Playful::ControlPoint::Device.  The ControlPoint will
handle doing the search and device/service creation for you and will hand you
over Devices to control them (and present them in a UI, perhaps?) as you need.
 More to come on this as the design settles down.

## Requirements

* Rubies (tested)
    * 1.9.3
    * 2.0.0
    * 2.1.0
* Gems
    * eventmachine
    * em-http-request
    * em-synchrony
    * nori
    * log_switch
    * savon



## Install

    $ gem install playful --pre

## Copyright

Copyright (c) 2012-2014 Steve Loveless

See LICENSE.md for details.
