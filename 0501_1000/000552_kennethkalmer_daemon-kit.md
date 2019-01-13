# Daemon Kit

[![Code Climate](https://codeclimate.com/github/kennethkalmer/daemon-kit.png)](https://codeclimate.com/github/kennethkalmer/daemon-kit)
[![Gem Version](https://badge.fury.io/rb/daemon-kit.png)](http://badge.fury.io/rb/daemon-kit)
[![Build Status](https://travis-ci.org/kennethkalmer/daemon-kit.png)](https://travis-ci.org/kennethkalmer/daemon-kit)
[![Coverage Status](https://coveralls.io/repos/kennethkalmer/daemon-kit/badge.png)](https://coveralls.io/r/kennethkalmer/daemon-kit)

* https://github.com/kennethkalmer/daemon-kit/wiki
* http://rdoc.info/github/kennethkalmer/daemon-kit
* http://groups.google.com/group/daemon-kit (daemon-kit@googlegroups.com)
* \#daemon-kit on Freenode

## Description

Daemon Kit aims to simplify creating Ruby daemons by providing a sound application skeleton (through a generator), task specific generators (jabber bot, etc) and robust environment management code.

Using simple built-in generators it is easy to create evented and non-evented daemons that perform a multitude of different tasks.

Supported generators:

* XMPP bot (evented)
* AMQP consumer (evented)
* SQS consumer
* Nanite agent (requires < 0.3)
* Cron-style daemon
* ruote remote participants

## Features/Problems

* Build it
* Review TODO.txt

## Synopsis

```
  $ daemon-kit -h
```

Get some help

```
  $ daemon-kit [/path/to/your/daemon] [options]
```

The above command generates a skeleton daemon environment for you to adapt.

```
  $ daemon-kit [/path/to/your/daemon] -i xmpp
```

Use the 'xmpp' generator instead of the default one.

## Generators

Currently five generators exist: default, xmpp, amqp, cron, ruote. Prior to version 0.3 there was a nanite generator too.

The default generator creates a simple daemon with an infinite loop inside that you can adapt.

### XMPP Generator

The jabber generator creates a simple daemon that leverages the [blather](http://blather.squishtech.com/) gem to process inbound messages. The daemon will manage the roster and other little tasks, leaving you to provide the hooks for processing messages, presence notifications and subscription request.

### Cron Generator

The cron generator creates a simple daemon that leverages the [rufus-scheduler](http://github.com/jmettraux/rufus-scheduler) gem to create a simple cron-like daemon. Please be aware that this daemon could never be a replacement for the battle-tested cron[http://www.gentoo.org/doc/en/cron-guide.xml] utility shipped standard with most *nix distributions.

### AMQP Consumer Generator

The AMQP generator creates a simple daemon that has all the stub code and configuration in place to help you write AMQP consumers quickly and effectively. The generated daemon relies on the presence of the [amqp](http://github.com/ruby-amqp/amqp) gem.

### ruote Remote Participants

The [ruote](http://openwfe.rubyforge.org) remote participant generator speeds up the development of workflow participants that run outside of the Ruby process that houses the engine. Daemon-kit handles all the communication and delegation logic, allowing you to focus purely on your participant's activities.

## Requirements

* Ruby 1.8.7 or later (developed on REE/1.9.1)
* [eventmachine-0.12.10](http://rubyeventmachine.com)
* rspec (for writing/running your specs)

## Generator Requirements

Depending on the generator you choose for your daemon, it might require additional gems to run.

* xmpp - [blather](http://blather.squishtech.com/) ~> 0.8.7
* cron - [rufus-scheduler](http://github.com/jmettraux/rufus-scheduler) (at least version 2.0.0)
* amqp - [amqp](http://github.com/tmm1/amqp)
* ruote - none, although [ruote](http://openwfe.rubyforge.org) should probably be running somewhere

The generators are all written using [Thor](http://rdoc.info/rdoc/wycats/thor), which is bundled with daemon-kit and not needed for running any of the generators.

## Install

Currently recommended to stick to the git repo:

```
  $ git clone git://github.com/kennethkalmer/daemon-kit.git
  $ rake build
  $ gem install pkg/daemon-kit-X.X.X.gem
```

Stable versions, when released are available directly from Rubygems:

```
  $ gem install daemon-kit
```

## Upgrading

When upgrading daemons generated from earlier versions of daemon-kit, it is easier in most cases to re-generate the daemon. Since 0.1.8 the generators use Thor, which allows you to review a diff of each file before deciding to overwrite it.

## Further reading

* Configuration.txt
* Deployment.txt
* Logging.txt
* RuoteParticipants.txt
* http://www.opensourcery.co.za/tag/daemon-kit/

## License

(The MIT License)

Copyright (c) 2009 Kenneth Kalmer (Internet Exchange CC, Clear Planet Information Solutions Pty Ltd)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
