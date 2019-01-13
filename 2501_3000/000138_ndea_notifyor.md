# Notifyor
## [![](http://i.imgur.com/FrRacwt.png)]()
Get realtime notifications (growl messages) on your desktop if something happens in your rails app.
Notifyor publishes changes to a redis channel. Subscription is performed from your local machine via a ssh tunnel.

Simply put:
Very growl. Such notifications. Much Notifyor.

## Installation

Add this line to your Gemfile:

```ruby
gem 'notifyor', '~> 0.8.1'
```

Or install it via rubygems if you just need the CLI.

```bash
gem install notifyor
```

And then execute:

    $ bundle install

## Getting started
Run the bundle command to install it.
After you install Notifyor create a new file **config/initializers/notifyor.rb** (a rails generator will be available soon for this task). Add the following content to your initializer.
```ruby
Notifyor.configure do |config|
    #config.redis_connection = Redis.new
end
```

### Linux
If you want to receive growl notifications on a linux system you have to install the *libnotify-bin*.

```bash
sudo apt-get install libnotify-bin 
```

### Mac OS X
Notifyor runs out of the box on Mac OS X. Lucky you.

### Windows
Currently not supported (see roadmap)

## Usage

### Plugin
Notifyor can be plugged into your models by adding the *notifyor* method to your class.
```ruby
class SomeClass < ActiveRecord::Base
    notifyor
end
```
By just including the method without options, notifyor will send notifications for the following events: *create*, *update* and *destroy*. The default message is the i18n key **notifyor.model.[create | update | destroy]** you have to provide in your application.
If you want to customize this message you can provide the following option to the notifyor method:
```ruby
class SomeClass < ActiveRecord::Base
    notifyor messages: {
      create: -> (model) { "My Message for model #{model.id}." },
      update: -> (model) { "My Message for model #{model.id}." },
      destroy: -> (model) { "My Message for model #{model.id}." }
  }
end 
```

If you dont want to receive a notification for a certain action just add the **only** option to notifyor.
```ruby
class SomeClass < ActiveRecord::Base
    notifyor only: [:create]
end 
```

The default channel on which notifyor publishes messages is 'notifyor'. This can be changed via the **channel** option.
You can provide multiple channels and notifyor will publish messages on them. (See the channel option on the CLI to subscribe to those channels).
```ruby
class SomeClass < ActiveRecord::Base
    notifyor channels: ['channel1', 'channel2']
end
```

### CLI
The CLI can be used independently just install the gem and run following command. 

```bash
notify_me --ssh-host some_host --ssh-port some_port --ssh-user some_user
```
#### Arguments for the CLI
 - **ssh-host** Provide the ssh host to which notifyor should connect to. (Default is localhost)
 - **ssh-port** Provide the ssh port on which notifyor should connect to. (Default is 22)
 - **ssh-user** Provide the ssh user for your remote server. (Please use ssh keys so that you just have to provide the *ssh-host*. -> Security reasons)
 - **tunnel-port** The tunnel port on which ssh will establish the connection. (Default is 2000)
 - **redis-port** The port of your redis server (Default is 6379)
 - **channel** Listen on another channel. Every message received on this channel will be displayed in a growl notification. (Default is notifyor)

**If you dont provide a ssh host notifyor will subscribe from your local redis and display them.**

Every notify_me instance is an individual subscriber so multiple users can receive growl messages.

## Roadmap
- Notifications for multiple OS (currently only Mac OS X and Linux systems with libnotify-lib installed.)
- Provide own logo in the growl notification
- Specs
- Documentation

## Development

After checking out the repo, run `bundle install` to install dependencies. 

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/notifyor/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
