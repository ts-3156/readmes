![Paratrooper](http://f.cl.ly/items/0Z1v1P1l1B1h1k1l2q0E/paratrooper_header.png)

[![Gem Version](http://img.shields.io/gem/v/paratrooper.svg?style=flat)](http://badge.fury.io/rb/paratrooper)
[![Build Status](http://img.shields.io/travis/mattpolito/paratrooper/master.svg?style=flat)](https://travis-ci.org/mattpolito/paratrooper)
[![Code Climate](http://img.shields.io/codeclimate/github/mattpolito/paratrooper.svg?style=flat)](https://codeclimate.com/github/mattpolito/paratrooper)

Simplify your [Heroku][] deploy with quick and concise deployment rake tasks.

## Installation

Add this line to your application's Gemfile:

```shell
gem 'paratrooper'
```

and then execute

```shell
bundle
```

or

install it yourself with

```shell
gem install paratrooper
```

## Usage

Instantiate Paratrooper with the name of your heroku application.

```ruby
Paratrooper.deploy('amazing-app')
```

You can also provide a tag:

```ruby
Paratrooper.deploy('amazing-app') do |config|
  config.tag = 'staging'
end
```

## Authentication

You can authenticate your Heroku account in a few ways:

* Provide an API Key

```ruby
Paratrooper.deploy('app') do |config|
  config.api_key = 'API_KEY'
end
```

* Set an environment variable

```ruby
ENV['HEROKU_API_KEY'] = 'API_KEY'
Paratrooper.deploy('app')
```

* Local Netrc file

```ruby
Paratrooper.deploy('app')
```

This method works via a local Netrc file handled via the [Heroku Toolbelt][] and is the default and preferred method for providing authentication keys.

## Git SSH key configuration

If you use multiple SSH keys for managing multiple accounts, for example in your `.ssh/config`, you can set the `deployment_host` option:

```ruby
Paratrooper.deploy('amazing-app') do |config|
  config.deployment_host = 'HOST'
end
```

This also works if you're using the [heroku-accounts](https://github.com/ddollar/heroku-accounts) plugin:

```ruby
Paratrooper.deploy('app') do |config|
  config.deployment_host: 'heroku.ACCOUNT_NAME'
end
```

## Tag Management

Please note: Tag management has been removed from Paratrooper 3. It added unneccesary complexity around an individual's deployment process.

## Sensible Default Deployment

You can use the object's methods any way you'd like, but we've provided a sensible default at `Paratrooper.deploy`.

This will perform the following tasks:

* Push changes to Heroku
* Run database migrations if any have been added to db/migrate
* Restart the application if migrations needed to be run

### Example Usage

```ruby
namespace :deploy do
  desc 'Deploy app in staging environment'
  task :staging do
    Paratrooper.deploy("amazing-staging-app")
  end

  desc 'Deploy app in production environment'
  task :production do
    Paratrooper.deploy("amazing-production-app")
  end
end
```

## Bucking the Norm

Our default deploy gets us most of the way, but maybe it's not for you--we've
got you covered. Every deployment method has a set of callback instructions that can be
utilized in almost any way you can imagine.

The `add_callback` method allows for the execution of arbitrary code within different steps of the deploy process.

There are 'before' and 'after' hooks for each of the following:

* setup
* activate_maintenance_mode
* push_repo
* run_migrations
* app_restart
* deactivate_maintenance_mode
* warm_instance
* teardown

### Example Usage

For example, say you want to let [New Relic][] know that you are deploying and
to disable your application monitoring.

```ruby
# lib/tasks/deploy.rake

namespace :deploy do
  desc 'Deploy app in production environment'
  task :production do
    Paratrooper.deploy("amazing-production-app") do |config|
      config.add_callback(:before_setup) do |output|
        output.display("Totally going to turn off newrelic")
        system %Q[curl https://rpm.newrelic.com/accounts/ACCOUNT_ID/applications/APPLICATION_ID/ping_targets/disable -X POST -H "X-Api-Key: API_KEY"]
      end

      config.add_callback(:after_teardown) do |output|
        system %Q[curl https://rpm.newrelic.com/accounts/ACCOUNT_ID/applications/APPLICATION_ID/ping_targets/enable -X POST -H "X-Api-Key: API_KEY"]
        output.display("Aaaannnd we're back")
      end
    end
  end
end
```

Or maybe you just want to run a rake task on your application. Since this task may take a moment to complete it's probably a good idea to throw up a maintenance page.

```ruby
# lib/tasks/deploy.rake

namespace :deploy do
  desc 'Deploy app in production environment'
  task :production do
    Paratrooper.deploy("amazing-production-app") do |config|
      config.maintenance = true
      config.add_callback(:after_teardown) do |output|
        output.display("Running some task that needs to run")
        config.add_remote_task("rake some:task:to:run")
      end
    end
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin my-new-feature`).
5. Create new Pull Request.

## Thanks

* [Rye Mason][] for the fantastic heading image.

[Heroku]: http://heroku.com
[Heroku Toolbelt]: http://toolbelt.heroku.com
[New Relic]: http://newrelic.com
[Rye Mason]: https://github.com/ryenotbread
[`Paratrooper::Notifier`]: https://github.com/mattpolito/paratrooper/blob/master/lib/paratrooper/notifier.rb
