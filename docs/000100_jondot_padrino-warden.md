# padrino-warden

A [Padrino](http://github.com/padrino/padrino-framework) module that provides authentication for your Padrino application through [Warden](http://github.com/hassox/warden).

Most of the code was adapted from [sinatra\_warden](http://github.com/jsmestad/sinatra_warden).

[![Gem
Version](https://badge.fury.io/rb/padrino-warden.svg)](http://badge.fury.io/rb/padrino-warden)

## Usage

Currently padrino-warden uses +password+ as default authentication strategy. If you wish to change that consult
[Warden](http://github.com/hassox/warden).

```ruby
class SampleApp < Padrino::Application
  register Padrino::Warden

  class User
    attr_reader :name
    def initialize(name)
      @name=name
    end

    def self.authenticate(a, b)
      return User.new('john')
    end
  end

  Warden::Strategies.add(:password) do
    def valid?
      params["email"] || params["password"]
    end

    def authenticate!
      u = User.authenticate(params["email"], params["password"])
      u.nil? ? fail!("Could not log in") : success!(u)
    end
  end

  Warden::Manager.serialize_into_session do |user|
    user.id
  end

  Warden::Manager.serialize_from_session do |id|
    User.get(id)
  end
end
```

Run this to see your new routes:

  `$ padrino rake routes`

You can now login at <http://localhost/sessions/login>

After login you can fiddle with *current\_user* for anything you need.

## Multi Sub-Apps

padrino-warden can be used across multiple apps in one project. You need to have one UserApp which handles logins and logouts.

Add this to your UserApp(/user):

```ruby
register Padrino::Warden
```

This will mount the sessions controller on it:

    /user/sessions/...

You OtherApps:

```ruby
register Padrino::Warden::Helpers
```

Configure warden globally within config/apps.rb. Don't forget to tell warden about the UserApp:

```ruby
Padrino.configure_apps do
  ...
  set :warden_failure_app, UserApp
end
```

Your UserApp needs to be mounted first in Padrino! Cascading routes from the UserApp can cause exceptions, so don't use an app mounted to the root path ('/') as UserApp.

## Configuration

There are some options you can override to customize padrino-warden to your
needs. Please consult the
[wiki](https://github.com/jondot/padrino-warden/wiki/Options) page to see all
of them.


## Overriding warden manager defaults

```ruby
class SampleApp < Padrino::Application
  register Padrino::Warden

  Warden::Strategies.add(:token) do
    def valid?
      params["token"]
    end

    def authenticate!
      ...
    end
  end

  set :warden_config do |manager|
    manager.scope_defaults :api, strategies: [:token], store: false
  end
end
```

## Changelog

Changelog is available on the [wiki](https://github.com/jondot/padrino-warden/wiki/Changelog).

## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Contributors

* Dotan Nahum (http://github.com/jondot)
* Michał Zając (http://github.com/Quintasan)

For sinatra\_warden, thanks to: [Justin Smestad](http://github.com/jsmestad), [Daniel Neighman](http://github.com/hassox) and [Shane Hanna](http://github.com/shanna).

## Copyright

Copyright (c) 2010 Dotan Nahum (jondot). See LICENSE for details.
Copyright (c) 2015 Michał Zając (Quintasan). See LICENSE for details.
