# Plezi - a real-time web application framework for Ruby

[![Gem Version](https://badge.fury.io/rb/plezi.svg)](https://badge.fury.io/rb/plezi)
[![Inline docs](http://inch-ci.org/github/boazsegev/plezi.svg?branch=master)](http://www.rubydoc.info/github/boazsegev/plezi/master/frames)
[![GitHub](https://img.shields.io/badge/GitHub-Open%20Source-blue.svg)](https://github.com/boazsegev/plezi)

Are microservices on your mind? Do you dream of a an SPA that's easy to scale? Did you wonder if you could write a whole Websockets, RESTful AJAX back-end with just a few lines of code (business logic not included)?

Welcome to your new home with [plezi.io](http://www.plezi.io), the Ruby real-time framework that assumes the business logic is *seperate* from the web service logic.

## Short and Sweet

What if your next Pub/Sub application could be as easy as:

```ruby
require 'plezi'
class MyChatroom
  # HTTP
  def index
    render :index
  end
  def on_open
    subscribe channel: :chat
    @name = ::ERB::Util.h(params[:nickname] || "anonymous")
    publish channel: :chat, message: "#{@name} joined the chat."
  end
  def on_message data
    publish channel: :chat, message: "#{@name}: #{::ERB::Util.h data}"
  end
  def on_shutdown
    write "Server is going away. Come back again some other time, #{@name}."
  end
end

Plezi.route '/(:nickname)', MyChatroom
```

## What does Plezi have to offer?

Plezi is a Rack based framework with support for native (server side implemented) Websockets.

Plezi will provide the following features over plain Rack:

* Object Oriented (M)VC design, BYO (Bring Your Own) models.

* A case sensitive RESTful router to map HTTP requests to your Controllers.

    Non-RESTful public Controller methods will be automatically published as valid HTTP routes, allowing the Controller to feel like an intuitive "virtual folder" with RESTful features.

* Raw Websocket connections.

    Websocket connections are now route specific, routing the websocket callbacks to the Controller that "owns" the route.

* Auto-Dispatch (optional) to automatically map JSON websocket "events" to Controller functions (handlers).

* Native Pub/Sub provided by [Iodine](https://github.com/boazsegev/iodine).

* Automatic (optional) scaling using Redis.

* An extensible template rendering abstraction engine, supports Slim, Markdown (using RedCarpet) and ERB out of the box.

* Belated, extensible, asset baking (optional fallback for when the application's assets weren't baked before deployment).

    It's possible to define an asset route (this isn't the default) to bake assets on the fly.

    In production mode, assets will be baked directly to the public folder supplied to Iodine (the web server) with a matching path. This allows the static file server to serve future requests.

    However, during development, baking will save the files to the asset's folder, so that the Ruby layer will be the one serving the content and dynamic updates could be supported.

Things Plezi **doesn't** do (anymore / ever):

* No DSL. Plezi won't clutter the global namespace.

* No application logic inside.

    Conneting your application logic to Plezi is easy, however, application logic should really be *independent*, **reusable** and secure. There are plenty of gems that support independent application logic authoring.

* No native session support. If you *must* have session support, Rack middleware gems provide a lot of options. Pick one... However...

    Session have been proved over and over to be insecure and resource draining.

    Why use a session when you can save server resources and add security by using a persistent connection, i.e. a Websocket? If you really feel like storing unimportant stuff, why not use javascript's `local storage` on the *client's* machine? (if you need to save important stuff, you probably shouldn't be using sessions anyway).

* No code refresh / development mode. If you want to restart the application automatically whenever you update the code, there are probably plenty of gems that will take care of that.

Do notice, Websockets require Iodine (the server), since (currently) it's the only Ruby server known to support native Websockets using a Websocket Callback Object.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'plezi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install plezi

## Usage

A new application (default applications include a simple chatroom demo):

     $  plezi new app_name

A simple hello world from `irb`:

```ruby
require 'plezi'

class HelloWorld
  def index
    "Hello World!"
  end
end

Plezi.route '*', HelloWorld

exit # <= if running from terminal, this will start the server
```

## Documentation

Plezi is fairly well documented.

Documentation is available both in the forms of tutorials and explanations available on the [plezi.io website](http://www.plezi.io) as well as through [the YARD documentation](http://www.rubydoc.info/gems/plezi).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/boazsegev/plezi.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
