# Wedding

> How would be a wedding without a gem?

<img src='http://i.imgur.com/Ap02gKh.png' alt='screenshot' width='600' />

## Overview

A fun experiment to invite my geeky friends
via this ruby gem.

## Installation

Command line install

    $ gem install wedding

Add this line to your application's Gemfile:

    gem 'wedding'

And then execute:

    $ bundle

## Usage

### Command Line

List of all available commands

    wedding

Print a personalized wedding invitation

    wedding invitation

Glory words for the groom

    wedding groom

Glory words for the bride

    wedding bride

RSVP for the event

    wedding rsvp

Map location of the venue

    wedding location

### Public API

New wedding

    # By default it would take config options from
    # lib/wedding/default_config.rb, which can be overridden
    # by passing your own hash

    wedding = Wedding.new

Returns invitation card string

    wedding.invitation

Wedding venue coordinates

    wedding.location

Returns google maps URL of the venue
    
    wedding.map_location

Access the groom 'object'
    
    wedding.groom

Access the bride 'object'
    
    wedding.bride

RSVP information about the event

    wedding.rsvp


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/jaipandya/wedding/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

