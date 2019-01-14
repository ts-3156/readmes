## Installation [0001_0500/014619_jashkenas_coffeescript.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/014619_jashkenas_coffeescript.md)

Once you have Node.js installed:

```shell
# Install locally for a project:
npm install --save-dev coffeescript

# Install globally to execute .coffee files anywhere:
npm install --global coffeescript
```

----

## Installation [0001_0500/013341_jasmine_jasmine.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/013341_jasmine_jasmine.md)

For the Jasmine NPM module:<br>
[https://github.com/jasmine/jasmine-npm](https://github.com/jasmine/jasmine-npm)

For the Jasmine Ruby Gem:<br>
[https://github.com/jasmine/jasmine-gem](https://github.com/jasmine/jasmine-gem)

For the Jasmine Python Egg:<br>
[https://github.com/jasmine/jasmine-py](https://github.com/jasmine/jasmine-py)

For the Jasmine headless browser gulp plugin:<br>
[https://github.com/jasmine/gulp-jasmine-browser](https://github.com/jasmine/gulp-jasmine-browser)

To install Jasmine standalone on your local box (where **_{#.#.#}_** below is substituted by the release number downloaded):

* Download the standalone distribution for your desired release from the [releases page](https://github.com/jasmine/jasmine/releases)
* Create a Jasmine directory in your project - `mkdir my-project/jasmine`
* Move the dist to your project directory - `mv jasmine/dist/jasmine-standalone-{#.#.#}.zip my-project/jasmine`
* Change directory - `cd my-project/jasmine`
* Unzip the dist - `unzip jasmine-standalone-{#.#.#}.zip`

Add the following to your HTML file:

```html
<link rel="shortcut icon" type="image/png" href="jasmine/lib/jasmine-{#.#.#}/jasmine_favicon.png">
<link rel="stylesheet" type="text/css" href="jasmine/lib/jasmine-{#.#.#}/jasmine.css">

<script type="text/javascript" src="jasmine/lib/jasmine-{#.#.#}/jasmine.js"></script>
<script type="text/javascript" src="jasmine/lib/jasmine-{#.#.#}/jasmine-html.js"></script>
<script type="text/javascript" src="jasmine/lib/jasmine-{#.#.#}/boot.js"></script>
```

----

## Installation [0001_0500/012600_twbs_bootstrap-sass.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/012600_twbs_bootstrap-sass.md)

Please see the appropriate guide for your environment of choice:

* [Ruby on Rails](#a-ruby-on-rails).
* [Bower](#b-bower).
* [npm / Node.js](#c-npm--nodejs).

----

## Installation [0001_0500/008790_bbatsov_rubocop.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/008790_bbatsov_rubocop.md)

**RuboCop**'s installation is pretty standard:

```sh
$ gem install rubocop
```

If you'd rather install RuboCop using `bundler`, don't require it in your `Gemfile`:

```rb
gem 'rubocop', require: false
```

RuboCop's development is moving at a very rapid pace and there are
often backward-incompatible changes between minor releases (since we
haven't reached version 1.0 yet). To prevent an unwanted RuboCop update you
might want to use a conservative version locking in your `Gemfile`:

```rb
gem 'rubocop', '~> 0.62.0', require: false
```

----

## Installation [0001_0500/008530_thoughtbot_bourbon.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/008530_thoughtbot_bourbon.md)

1. Install the Bourbon gem using the [RubyGems] package manager:

    ```bash
    gem install bourbon
    ```

1. Install the Bourbon library into the current directory:

    ```bash
    bourbon install
    ```

    **Pro Tip:** You can target installation into a specific directory using the
    `path` flag:

    ```bash
    bourbon install --path my/custom/path/
    ```

1. Import Bourbon at the beginning of your stylesheet:

    ```scss
    @import "bourbon/bourbon";
    ```

    It’s not recommended that you modify Bourbon’s files directly as it will
    make updating to future versions difficult, by overwriting your custom
    changes or causing merge conflicts.

  [RubyGems]: https://rubygems.org

----

## Installation [0001_0500/008341_ruby-grape_grape.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/008341_ruby-grape_grape.md)

Grape is available as a gem, to install it just install the gem:

    gem install grape

If you're using Bundler, add the gem to Gemfile.

    gem 'grape'

Run `bundle install`.

----

## Installation [0001_0500/007883_carrierwaveuploader_carrierwave.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/007883_carrierwaveuploader_carrierwave.md)

Install the latest release:

```
$ gem install carrierwave
```

In Rails, add it to your Gemfile:

```ruby
gem 'carrierwave', '~> 1.0'
```

Finally, restart the server to apply the changes.

As of version 1.0, CarrierWave requires Rails 4.0 or higher and Ruby 2.0
or higher. If you're on Rails 3, you should use v0.11.0.

----

## Installation [0001_0500/007589_tmuxinator_tmuxinator.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/007589_tmuxinator_tmuxinator.md)

```
gem install tmuxinator
```

----

## Installation [0001_0500/006981_plataformatec_simple_form.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/006981_plataformatec_simple_form.md)

Add it to your Gemfile:

```ruby
gem 'simple_form'
```

Run the following command to install it:

```console
bundle install
```

Run the generator:

```console
rails generate simple_form:install
```

----

## Installation [0001_0500/006979_kaminari_kaminari.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/006979_kaminari_kaminari.md)

To install kaminari on the default Rails stack, just put this line in your Gemfile:

```ruby
gem 'kaminari'
```

Then bundle:

```sh
% bundle
```

If you're building non-Rails of non-ActiveRecord app and want the pagination feature on it, please take a look at [Other Framework/Library Support](#other-frameworklibrary-support) section.


----

## Installation [0001_0500/006750_sferik_rails_admin.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/006750_sferik_rails_admin.md)

1. On your gemfile: `gem 'rails_admin', '~> 1.3'`
2. Run `bundle install`
3. Run `rails g rails_admin:install`
4. Provide a namespace for the routes when asked
5. Start a server `rails s` and administer your data at [/admin](http://localhost:3000/admin). (if you chose default namespace: /admin)

----

## Installation [0001_0500/006634_flightjs_flight.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/006634_flightjs_flight.md)

Quick start using the [pre-built
library](http://flightjs.github.io/release/latest/flight.min.js) (a
[UMD](https://github.com/umdjs/umd) bundle). It exposes all of its modules as
properties of a global variable, `flight`.

```html
<!-- jQuery -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- Flight release -->
<script src="http://flightjs.github.io/release/latest/flight.min.js"></script>
```

Using [npm](https://www.npmjs.org/):

```
npm install --save flightjs
```

Using [Bower](http://bower.io/):

```
bower install --save flight
```

You will have to load [jQuery](http://jquery.com) in your application.

----

## Installation [0001_0500/006307_charliesome_better_errors.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/006307_charliesome_better_errors.md)

Add this to your Gemfile:

```ruby
group :development do
  gem "better_errors"
  gem "binding_of_caller"
end
```

[`binding_of_caller`](https://github.com/banister/binding_of_caller) is optional, but is necessary to use Better Errors' advanced features (REPL, local/instance variable inspection, pretty stack frame names).

_Note: If you discover that Better Errors isn't working - particularly after upgrading from version 0.5.0 or less - be sure to set `config.consider_all_requests_local = true` in `config/environments/development.rb`._

----

## Installation [0001_0500/006161_middleman_middleman.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/006161_middleman_middleman.md)

Middleman is built on Ruby and uses the RubyGems package manager for installation. These are usually pre-installed on Mac OS X and Linux. Windows users can install both using [RubyInstaller]. For windows [RubyInstaller-Devkit] is also required.

```
gem install middleman
```

----

## Installation [0001_0500/005923_turbolinks_turbolinks.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/005923_turbolinks_turbolinks.md)

Include [`dist/turbolinks.js`](dist/turbolinks.js) in your application’s JavaScript bundle.

Turbolinks automatically initializes itself when loaded via a standalone `<script>` tag or a traditional concatenated JavaScript bundle. If you load Turbolinks as a CommonJS or AMD module, first require the module, then call the provided `start()` function.

----

## Installation [0001_0500/005725_venmo_synx.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/005725_venmo_synx.md)

    $ gem install synx

----

## Installation [0001_0500/005708_varvet_pundit.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/005708_varvet_pundit.md)

``` ruby
gem "pundit"
```

Include Pundit in your application controller:

``` ruby
class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery
end
```

Optionally, you can run the generator, which will set up an application policy
with some useful defaults for you:

``` sh
rails g pundit:install
```

After generating your application policy, restart the Rails server so that Rails
can pick up any classes in the new `app/policies/` directory.

----

## Installation [0001_0500/005520_guard_guard.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/005520_guard_guard.md)

The simplest way to install Guard is to use [Bundler](http://bundler.io).

Add Guard (and any other dependencies) to a `Gemfile` in your project’s root:

```ruby
group :development do
  gem 'guard'
end
```

then install it by running Bundler:

```bash
$ bundle
```

Generate an empty `Guardfile` with:

```bash
$ bundle exec guard init
```

Run Guard through Bundler with:

```bash
$ bundle exec guard
```

If you are on Mac OS X and have problems with either Guard not reacting to file
changes or Pry behaving strange, then you should [add proper Readline support
to Ruby on Mac OS
X](https://github.com/guard/guard/wiki/Add-Readline-support-to-Ruby-on-Mac-OS-X).


----

## Installation [0001_0500/005062_realm_jazzy.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/005062_realm_jazzy.md)

```shell
[sudo] gem install jazzy
```

See [Installation Problems](#installation-problems) for solutions to some
common problems.

----

## Installation [0001_0500/005026_justinfrench_formtastic.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/005026_justinfrench_formtastic.md)

Simply add Formtastic to your Gemfile and bundle it up:

```ruby
  gem 'formtastic', '~> 3.0'
```

Run the installation generator:

```shell
$ rails generate formtastic:install
```


----

## Installation [0001_0500/004716_sparklemotion_nokogiri.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/004716_sparklemotion_nokogiri.md)

If this doesn't work:

```
gem install nokogiri
```

then please start troubleshooting here:

> http://www.nokogiri.org/tutorials/installing_nokogiri.html

There are currently 1,237 Stack Overflow questions about Nokogiri
installation. The vast majority of them are out of date and therefore
incorrect. __Please do not use Stack Overflow.__

Instead, [tell us](http://nokogiri.org/tutorials/getting_help.html)
when the above instructions don't work for you. This allows us to both
help you directly and improve the documentation.


----

## Installation [0001_0500/004707_ankane_chartkick.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/004707_ankane_chartkick.md)

Add this line to your application's Gemfile:

```ruby
gem "chartkick"
```

Next, choose your charting library.

----

## Installation [0001_0500/004617_ddollar_foreman.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/004617_ddollar_foreman.md)

    $ gem install foreman

Ruby users should take care *not* to install foreman in their project's `Gemfile`.

----

## Installation [0001_0500/004513_bkeepers_dotenv.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/004513_bkeepers_dotenv.md)

----

## Installation [0001_0500/004490_sferik_t.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/004490_sferik_t.md)
Once you've verified that Ruby is installed:

    gem install t

----

## Installation [0001_0500/004444_thoughtbot_neat.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/004444_thoughtbot_neat.md)

1. Install the Neat gem using the [RubyGems] package manager:

   ```bash
   gem install neat
   ```

    Alternatively, you can install Neat with [Bower].

1. Install or update Neat’s dependencies:

   ```bash
   gem install sass # or gem update sass
   ```

   **Pro Tip:** You can target installation into a specific directory using the
   `path` flag:

   ```bash
   neat install --path my/custom/path/
   ```

1. Install the Neat library into the current directory:

   ```bash
   neat install
   ```

1. Import Neat in your stylesheet:

   ```scss
   @import "neat/neat";
   ```

   It’s not recommended to add or modify the Neat files so that you can update
   them easily.

[RubyGems]: https://rubygems.org
[Bower]: http://bower.io

----

## Installation [0001_0500/004442_hanami_hanami.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/004442_hanami_hanami.md)

__Hanami__ supports Ruby (MRI) 2.3+

```shell
gem install hanami
```

----

## Installation [0001_0500/004354_skywinder_github-changelog-generator.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/004354_skywinder_github-changelog-generator.md)

GitHub Changelog Generator is a [Ruby](https://www.ruby-lang.org/)
program, distributed as a RubyGem. The Ruby language homepage has an [Installation page](https://www.ruby-lang.org/en/documentation/installation/).

Install the gem like:

    $ gem install github_changelog_generator

Depending on your system, you _may_ need to run the shell as an Administrator (Windows),
or use `sudo gem install github_changelog_generator` (Linux).

----

## Installation [0001_0500/004345_drapergem_draper.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/004345_drapergem_draper.md)

As of version 3.0.0, Draper is only compatible with Rails 5 / Ruby 2.2 and later. Add Draper to your Gemfile.

```ruby
  gem 'draper'
```

After that, run `bundle install` within your app's directory.

If you're upgrading from a 0.x release, the major changes are outlined [in the
wiki](https://github.com/drapergem/draper/wiki/Upgrading-to-1.0).

----

## Installation [0001_0500/004209_mbleigh_acts-as-taggable-on.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/004209_mbleigh_acts-as-taggable-on.md)

To use it, add it to your Gemfile:

```ruby
gem 'acts-as-taggable-on', '~> 6.0'
```

and bundle:

```shell
bundle
```

----

## Installation [0001_0500/004023_sferik_twitter.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/004023_sferik_twitter.md)
    gem install twitter

----

## Installation [0001_0500/003997_phusion_passenger.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003997_phusion_passenger.md)

Please follow [the installation instructions on the website](https://www.phusionpassenger.com/library/install/).

----

## Installation [0001_0500/003967_ruby-concurrency_concurrent-ruby.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003967_ruby-concurrency_concurrent-ruby.md)

```shell
gem install concurrent-ruby
```

or add the following line to Gemfile:

```ruby
gem 'concurrent-ruby', require: 'concurrent'
```

and run `bundle install` from your shell.

----

## Installation [0001_0500/003921_CanCanCommunity_cancancan.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003921_CanCanCommunity_cancancan.md)

Add this to your Gemfile: 

    gem 'cancancan', '~> 2.0'
    
and run the `bundle install` command.

For Rails < 4.2 use:

    gem 'cancancan', '~> 1.10'
   
----

## Installation [0001_0500/003793_doorkeeper-gem_doorkeeper.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003793_doorkeeper-gem_doorkeeper.md)

Put this in your Gemfile:

``` ruby
gem 'doorkeeper'
```

Run the installation generator with:

    rails generate doorkeeper:install

This will install the doorkeeper initializer into `config/initializers/doorkeeper.rb`.

----

## Installation [0001_0500/003750_activemerchant_active_merchant.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003750_activemerchant_active_merchant.md)

----

## Installation [0001_0500/003707_ankane_pghero.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003707_ankane_pghero.md)

PgHero is available as a Rails engine, Linux package, and Docker image.

Select your preferred method of installation to get started.

- [Rails](guides/Rails.md)
- [Linux](guides/Linux.md)
- [Docker](guides/Docker.md)

----

## Installation [0001_0500/003664_celluloid_celluloid.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003664_celluloid_celluloid.md)

Add this line to your application's Gemfile:

    gem 'celluloid'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install celluloid

Require Celluloid with:

    require 'celluloid'

----

## Installation [0001_0500/003613_rspec_rspec-rails.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003613_rspec_rspec-rails.md)

1. Add `rspec-rails` to **both** the `:development` and `:test` groups
   of your app’s `Gemfile`:

   ```ruby
   # Run against the latest stable release
   group :development, :test do
     gem 'rspec-rails', '~> 3.8'
   end

   # Or, run against the master branch
   # (requires master-branch versions of all related RSpec libraries)
   group :development, :test do
     %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
       gem lib, :git => "https://github.com/rspec/#{lib}.git", :branch => 'master'
     end
   end
   ```

   (Adding it to the `:development` group is not strictly necessary,
   but without it, generators and rake tasks must be preceded by `RAILS_ENV=test`.)

2. Then, in your project directory:

   ```sh
   # Download and install
   $ bundle install

   # Generate boilerplate configuration files
   # (check the comments in each generated file for more information)
   $ rails generate rspec:install
         create  .rspec
         create  spec
         create  spec/spec_helper.rb
         create  spec/rails_helper.rb
   ```

----

## Installation ## [0001_0500/003529_nesquena_rabl.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003529_nesquena_rabl.md)

Install RABL as a gem:

```
gem install rabl
```

or add to your Gemfile:

```ruby
# Gemfile
gem 'rabl'
# Also add either `oj` or `yajl-ruby` as the JSON parser
gem 'oj'
```

and run `bundle install` to install the dependency.

If you are using **Rails 2.3.8 (and up), Rails 3.X or Padrino**, RABL works without configuration.

**Important:** With Padrino, be sure that **the rabl gem is listed after the padrino gem in your Gemfile**, otherwise
Rabl will not register properly as a template engine.

With Sinatra, or any other tilt-based framework, simply register:

```ruby
Rabl.register!
```

and RABL will be initialized and ready for use. For usage with Sinatra, check out
the [Sinatra Usage](https://github.com/nesquena/rabl/wiki/Setup-for-Sinatra) guide.

----

## Installation [0001_0500/003321_mmistakes_minimal-mistakes.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003321_mmistakes_minimal-mistakes.md)

There are three ways to install: as a [gem-based theme](https://jekyllrb.com/docs/themes/#understanding-gem-based-themes), as a [remote theme](https://blog.github.com/2017-11-29-use-any-theme-with-github-pages/) (GitHub Pages compatible), or forking/directly copying all of the theme files into your project.

----

## Installation [0001_0500/003264_typhoeus_typhoeus.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003264_typhoeus_typhoeus.md)

```
gem install typhoeus
```

```
gem "typhoeus"
```

----

## Installation [0001_0500/003234_burke_zeus.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003234_burke_zeus.md)

Install the gem.

    gem install zeus

Q: "I should put it in my `Gemfile`, right?"

A: No. You can, but running `bundle exec zeus` instead of `zeus` adds precious seconds to commands that otherwise would be quite a bit faster. Zeus was built to be run from outside of bundler.

----

## Installation [0001_0500/003224_dejan_rails_panel.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003224_dejan_rails_panel.md)

To use this extension you need to add meta_request gem to your app's Gemfile:

```ruby
group :development do
  gem 'meta_request'
end
```

Install RailsPanel extension from the [Chrome WebStore](https://chrome.google.com/webstore/detail/railspanel/gjpfobpafnhjhbajcjgccbbdofdckggg). This is recommended way of installing extension, since it will auto-update on every new version. Note that you still need to update meta_request gem yourself.

----

## Installation [0001_0500/003178_brigade_scss-lint.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003178_brigade_scss-lint.md)

```bash
gem install scss_lint
```

...or add the following to your `Gemfile` and run `bundle install`:

```ruby
gem 'scss_lint', require: false
```

The `require: false` is necessary because `scss-lint` monkey patches Sass in
order to properly traverse the parse tree created by the Sass parser. This can
interfere with other applications that invoke the Sass parser after `scss-lint`
libraries have been loaded at runtime, so you should only require it in the
context in which you are linting, nowhere else.

----

## Installation [0001_0500/003134_thoughtbot_suspenders.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/003134_thoughtbot_suspenders.md)

First install the suspenders gem:

    gem install suspenders

Then run:

    suspenders projectname

This will create a Rails app in `projectname` using the latest version of Rails.

----

## Installation [0001_0500/002922_rails_webpacker.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002922_rails_webpacker.md)

You can either add Webpacker during setup of a new Rails 5.1+ application
using new `--webpack` option:

```bash
# Available Rails 5.1+
rails new myapp --webpack
```

Or add it to your `Gemfile`:

```ruby
# Gemfile
gem 'webpacker', '~> 3.5'

# OR if you prefer to use master
gem 'webpacker', git: 'https://github.com/rails/webpacker.git'
yarn add https://github.com/rails/webpacker.git

# OR to try out 4.x pre-release
gem 'webpacker', '>= 4.0.x'
yarn add @rails/webpacker@next
```

Finally, run the following to install Webpacker:

```bash
bundle
bundle exec rails webpacker:install

# OR (on rails version < 5.0)
bundle exec rake webpacker:install
```

Optional: To fix ["unmet peer dependency" warnings](https://github.com/rails/webpacker/issues/1078),

```bash
yarn upgrade
```

----

## Installation [0001_0500/002857_mikel_mail.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002857_mikel_mail.md)

Installation is fairly simple, I host mail on rubygems, so you can just do:

    # gem install mail

----

## Installation [0001_0500/002853_trailblazer_cells.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002853_trailblazer_cells.md)

Cells runs with any framework.

```ruby
gem "cells"
```

For Rails, please use the [cells-rails](https://github.com/trailblazer/cells-rails) gem. It supports Rails >= 4.0.

```ruby
gem "cells-rails"
```

Lower versions of Rails will still run with Cells, but you will get in trouble with the helpers. (Note: we use Cells in production with Rails 3.2 and Haml and it works great.)

Various template engines are supported but need to be added to your Gemfile.

* [cells-erb](https://github.com/trailblazer/cells-erb)
* [cells-hamlit](https://github.com/trailblazer/cells-hamlit) We strongly recommend using [Hamlit](https://github.com/k0kubun/hamlit) as a Haml replacement.
* [cells-haml](https://github.com/trailblazer/cells-haml) Make sure to bundle Haml 4.1: `gem "haml", github: "haml/haml", ref: "7c7c169"`. Use `cells-hamlit` instead.
* [cells-slim](https://github.com/trailblazer/cells-slim)

```ruby
gem "cells-erb"
```

In Rails, this is all you need to do. In other environments, you need to include the respective module into your cells.

```ruby
class CommentCell < Cell::ViewModel
  include ::Cell::Erb # or Cell::Hamlit, or Cell::Haml, or Cell::Slim
end
```

----

## Installation [0001_0500/002821_mojombo_chronic.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002821_mojombo_chronic.md)

```
$ gem install chronic
```

----

## Installation [0001_0500/002790_defunkt_gist.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002790_defunkt_gist.md)

‌If you have ruby installed:

    gem install gist

‌If you're using Bundler:

    source :rubygems
    gem 'gist'

‌For OS X, gist lives in Homebrew

    brew install gist

----

## Installation [0001_0500/002762_peek_peek.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002762_peek_peek.md)

Add this line to your application's Gemfile:

    gem 'peek'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install peek

----

## Installation [0001_0500/002756_bblimke_webmock.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002756_bblimke_webmock.md)

    gem install webmock

----

## Installation [0001_0500/002698_thoughtbot_high_voltage.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002698_thoughtbot_high_voltage.md)

There are two ways to install High Voltage. 

You can run: 

    $ gem install high_voltage

Or you can include in your Gemfile:

```ruby
gem 'high_voltage', '~> 3.1'
```

----

## Installation [0001_0500/002623_supermarin_xcpretty.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002623_supermarin_xcpretty.md)
``` bash
$ gem install xcpretty
```

----

## Installation [0001_0500/002606_activeadmin_inherited_resources.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002606_activeadmin_inherited_resources.md)

You can let bundler install Inherited Resources by adding this line to your application's Gemfile:

```ruby
gem 'inherited_resources'
```

And then execute:

```sh
$ bundle install
```

Or install it yourself with:

```sh
$ gem install inherited_resources
```

----

## Installation [0001_0500/002588_rmosolgo_graphql-ruby.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002588_rmosolgo_graphql-ruby.md)

Install from RubyGems by adding it to your `Gemfile`, then bundling.

```ruby
# Gemfile
gem 'graphql'
```

```
$ bundle install
```

----

## Installation [0001_0500/002583_nathanvda_cocoon.markdown](https://github.com/ts-3156/readmes/blob/master/0001_0500/002583_nathanvda_cocoon.markdown)

Inside your `Gemfile` add the following:

```ruby
gem "cocoon"
```

> Please note that for rails 4 you will need at least v1.2.0 or later.

----

## Installation [0001_0500/002527_pilu_web-app-theme.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002527_pilu_web-app-theme.md)


----

## Installation [0001_0500/002476_ankane_groupdate.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002476_ankane_groupdate.md)

Add this line to your application’s Gemfile:

```ruby
gem 'groupdate'
```

For MySQL and SQLite, also follow [these instructions](#additional-instructions).

----

## Installation [0001_0500/002460_mustache_mustache.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002460_mustache_mustache.md)

Install the gem locally with:

    $ gem install mustache

Or add it to your `Gemfile`:

```ruby
gem "mustache", "~> 1.0"
```


----

## Installation ## [0001_0500/002447_teampoltergeist_poltergeist.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002447_teampoltergeist_poltergeist.md)

Add this line to your Gemfile and run `bundle install`:

``` ruby
gem 'poltergeist'
```

In your test setup add:

``` ruby
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist
```

If you were previously using the `:rack_test` driver, be aware that
your app will now run in a separate thread and this can have
consequences for transactional tests. [See the Capybara README for more
detail](https://github.com/jnicklas/capybara/blob/master/README.md#transactions-and-database-setup).

----

## Installation [0001_0500/002445_MiniProfiler_rack-mini-profiler.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002445_MiniProfiler_rack-mini-profiler.md)

Install/add to Gemfile in Ruby 2.3+

```ruby
gem 'rack-mini-profiler'
```

NOTE: Be sure to require rack_mini_profiler below the `pg` and `mysql` gems in your Gemfile. rack_mini_profiler will identify these gems if they are loaded to insert instrumentation. If included too early no SQL will show up.

You can also include optional libraries to enable additional features.
```ruby
# For memory profiling
gem 'memory_profiler'

# For call-stack profiling flamegraphs
gem 'flamegraph'
gem 'stackprof'
```

----

## Installation & Prerequisites [0001_0500/002428_postrank-labs_goliath.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002428_postrank-labs_goliath.md)

* Install Ruby 1.9 (via RVM or natively)

```bash
$> gem install rvm
$> rvm install 1.9.3
$> rvm use 1.9.3
```

* Install Goliath:

```bash
$> gem install goliath
```

----

## Installation [0001_0500/002361_comfy_comfortable-mexican-sofa.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002361_comfy_comfortable-mexican-sofa.md)

Add gem definition to your Gemfile:

```ruby
gem "comfortable_mexican_sofa", "~> 2.0.0"
```

Then from the Rails project's root run:

    bundle install
    rails generate comfy:cms
    rake db:migrate

Now take a look inside your `config/routes.rb` file. You'll see where routes attach for the admin area and content serving. Make sure that content serving route appears as a very last item or it will make all other routes to be inaccessible.

```ruby
comfy_route :cms_admin, path: "/admin"
comfy_route :cms, path: "/"
```

----

## Installation [0001_0500/002342_intridea_hashie.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002342_intridea_hashie.md)

Hashie is available as a RubyGem:

```bash
$ gem install hashie
```

----

## Installation [0001_0500/002331_dotless-de_vagrant-vbguest.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002331_dotless-de_vagrant-vbguest.md)

Requires vagrant 1.3 or later

----

## Installation [0001_0500/002313_RolifyCommunity_rolify.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002313_RolifyCommunity_rolify.md)

Add this to your Gemfile and run the `bundle` command.

```ruby
gem "rolify"
```

----

## Installation [0001_0500/002307_brigade_overcommit.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002307_brigade_overcommit.md)

`overcommit` is installed via [RubyGems](https://rubygems.org/). It is strongly
recommended that your environment support running `gem install` without
requiring `sudo` privileges. Using a Ruby version manager like
[`rbenv`](https://github.com/rbenv/rbenv/) or [`rvm`](https://rvm.io/) can help
here.

Once you have an environment that allows you to install gems without `sudo`,
run:

```bash
gem install overcommit
```

You can then run the `overcommit` command to install hooks into repositories.

```bash
mkdir important-project
cd important-project
git init
overcommit --install
```

After running `overcommit --install`, any existing hooks for your repository
which Overcommit will replace will be backed up. You can restore everything to
the way it was by running `overcommit --uninstall`.

----

## Installation [0001_0500/002301_jubos_fake-s3.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002301_jubos_fake-s3.md)

    gem install fakes3

----

## Installation [0001_0500/002290_cyu_rack-cors.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002290_cyu_rack-cors.md)

Install the gem:

`gem install rack-cors`

Or in your Gemfile:

```ruby
gem 'rack-cors', require: 'rack/cors'
```


----

## Installation [0001_0500/002236_krisleech_wisper.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002236_krisleech_wisper.md)

Add this line to your application's Gemfile:

```ruby
gem 'wisper', '2.0.0'
```

----

## Installation ## [0001_0500/002216_roidrage_lograge.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002216_roidrage_lograge.md)

In your Gemfile

```ruby
gem "lograge"
```

Enable it in an initializer or the relevant environment config:

```ruby
# config/initializers/lograge.rb
# OR
# config/environments/production.rb
Rails.application.configure do
  config.lograge.enabled = true
end
```

If you're using Rails 5's API-only mode and inherit from
`ActionController::API`, you must define it as the controller base class which
lograge will patch:

```ruby
# config/initializers/lograge.rb
Rails.application.configure do
  config.lograge.base_controller_class = 'ActionController::API'
end
```

If you use multiple base controller classes in your application, specify an array:

```ruby
# config/initializers/lograge.rb
Rails.application.configure do
  config.lograge.base_controller_class = ['ActionController::API', 'ActionController::Base']
end
```

You can also add a hook for own custom data

```ruby
# config/environments/staging.rb
Rails.application.configure do
  config.lograge.enabled = true

  # custom_options can be a lambda or hash
  # if it's a lambda then it must return a hash
  config.lograge.custom_options = lambda do |event|
    # capture some specific timing values you are interested in
    {:name => "value", :timing => some_float.round(2), :host => event.payload[:host]}
  end
end
```

Or you can add a timestamp:

```ruby
Rails.application.configure do
  config.lograge.enabled = true

  # add time to lograge
  config.lograge.custom_options = lambda do |event|
    { time: Time.now }
  end
end
```

You can also keep the original (and verbose) Rails logger by following this configuration:

```ruby
Rails.application.configure do
  config.lograge.keep_original_rails_log = true

  config.lograge.logger = ActiveSupport::Logger.new "#{Rails.root}/log/lograge_#{Rails.env}.log"
end
```

You can then add custom variables to the event to be used in `custom_options` (available via the `event.payload` hash, which has to be processed in `custom_options` method to be included in log output, see above):

```ruby
# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  def append_info_to_payload(payload)
    super
    payload[:host] = request.host
  end
end
```

Alternatively, you can add a hook for accessing controller methods directly (e.g. `request` and `current_user`).
This hash is merged into the log data automatically.

```ruby
Rails.application.configure do
  config.lograge.enabled = true

  config.lograge.custom_payload do |controller|
    {
      host: controller.request.host,
      user_id: controller.current_user.try(:id)
    }
  end
end
```

To further clean up your logging, you can also tell Lograge to skip log messages
meeting given criteria.  You can skip log messages generated from certain controller
actions, or you can write a custom handler to skip messages based on data in the log event:

```ruby
# config/environments/production.rb
Rails.application.configure do
  config.lograge.enabled = true

  config.lograge.ignore_actions = ['HomeController#index', 'AController#an_action']
  config.lograge.ignore_custom = lambda do |event|
    # return true here if you want to ignore based on the event
  end
end
```

Lograge supports multiple output formats. The most common is the default
lograge key-value format described above. Alternatively, you can also generate
JSON logs in the json_event format used by [Logstash](http://logstash.net/).

```ruby
# config/environments/production.rb
Rails.application.configure do
  config.lograge.formatter = Lograge::Formatters::Logstash.new
end
```

*Note:* When using the logstash output, you need to add the additional gem
`logstash-event`. You can simply add it to your Gemfile like this

```ruby
gem "logstash-event"
```

Done.

The available formatters are:

```ruby
  Lograge::Formatters::Lines.new
  Lograge::Formatters::Cee.new
  Lograge::Formatters::Graylog2.new
  Lograge::Formatters::KeyValue.new  # default lograge format
  Lograge::Formatters::Json.new
  Lograge::Formatters::Logstash.new
  Lograge::Formatters::LTSV.new
  Lograge::Formatters::Raw.new       # Returns a ruby hash object
```

In addition to the formatters, you can manipulate the data your self by passing
an object which responds to #call:

```ruby
# config/environments/production.rb
Rails.application.configure do
  config.lograge.formatter = ->(data) { "Called #{data[:controller]}" } # data is a ruby hash
end
```

----

## Installation [0001_0500/002190_ankane_ahoy.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002190_ankane_ahoy.md)

Add this line to your application’s Gemfile:

```ruby
gem 'ahoy_matey'
```

And run:

```sh
bundle install
rails generate ahoy:install
rails db:migrate
```

Restart your web server, open a page in your browser, and a visit will be created :tada:

Track your first event from a controller with:

```ruby
ahoy.track "My first event", {language: "Ruby"}
```

----

## Installation & Usage [0001_0500/002189_rubysherpas_paranoia.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002189_rubysherpas_paranoia.md)

For Rails 3, please use version 1 of Paranoia:

``` ruby
gem "paranoia", "~> 1.0"
```

For Rails 4 and 5, please use version 2 of Paranoia (2.2 or greater required for rails 5):

``` ruby
gem "paranoia", "~> 2.2"
```

Of course you can install this from GitHub as well from one of these examples:

``` ruby
gem "paranoia", github: "rubysherpas/paranoia", branch: "rails3"
gem "paranoia", github: "rubysherpas/paranoia", branch: "rails4"
gem "paranoia", github: "rubysherpas/paranoia", branch: "rails5"
```

Then run:

``` shell
bundle install
```

Updating is as simple as `bundle update paranoia`.

----

## Installation [0001_0500/002172_minimagick_minimagick.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002172_minimagick_minimagick.md)

Add the gem to your Gemfile:

```rb
gem "mini_magick"
```

----

## Installation [0001_0500/002164_brandonhilkert_sucker_punch.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002164_brandonhilkert_sucker_punch.md)

Add this line to your application's Gemfile:

    gem 'sucker_punch', '~> 2.0'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sucker_punch

----

## Installation [0001_0500/002144_trailblazer_reform.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002144_trailblazer_reform.md)

Add this line to your Gemfile:

```ruby
gem "reform"
```

Reform works fine with Rails 3.1-5.0. However, inheritance of validations with `ActiveModel::Validations` is broken in Rails 3.2 and 4.0.

Since Reform 2.2, you have to add the `reform-rails` gem to your `Gemfile` to automatically load ActiveModel/Rails files.

```ruby
gem "reform-rails"
```

Since Reform 2.0 you need to specify which **validation backend** you want to use (unless you're in a Rails environment where ActiveModel will be used).

To use ActiveModel (not recommended because very out-dated).

```ruby
require "reform/form/active_model/validations"
Reform::Form.class_eval do
  include Reform::Form::ActiveModel::Validations
end
```

To use dry-validation (recommended).

```ruby
require "reform/form/dry"
Reform::Form.class_eval do
  feature Reform::Form::Dry
end
```

Put this in an initializer or on top of your script.


----

## Installation [0001_0500/002097_michenriksen_gitrob.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002097_michenriksen_gitrob.md)

A [precompiled version is available](https://github.com/michenriksen/gitrob/releases) for each release, alternatively you can use the latest version of the source code from this repository in order to build your own binary.

Make sure you have a correctly configured **Go >= 1.8** environment and that `$GOPATH/bin` is in your `$PATH`

    $ go get github.com/michenriksen/gitrob

This command will download gitrob, install its dependencies, compile it and move the `gitrob` executable to `$GOPATH/bin`.

----

## Installation [0001_0500/002075_collectiveidea_audited.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002075_collectiveidea_audited.md)

Add the gem to your Gemfile:

```ruby
gem "audited", "~> 4.7"
```

Then, from your Rails app directory, create the `audits` table:

```bash
$ rails generate audited:install
$ rake db:migrate
```

If you're using PostgreSQL, then you can use `rails generate audited:install --audited-changes-column-type jsonb` (or `json`) to store audit changes natively with its JSON column types. If you're using something other than integer primary keys (e.g. UUID) for your User model, then you can use `rails generate audited:install --audited-user-id-column-type uuid` to customize the `audits` table `user_id` column type.

----

## Installation [0001_0500/002064_trulia_hologram.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002064_trulia_hologram.md)

Add this line to your application's Gemfile:

    gem 'hologram'

And then execute:

    $ bundle

If you don't use bundler you can run `gem install hologram`.


----

## Installation [0001_0500/002024_collectiveidea_awesome_nested_set.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/002024_collectiveidea_awesome_nested_set.md)

Add to your Gemfile:

```ruby
gem 'awesome_nested_set'
```

----

## Installation [0001_0500/001974_ohler55_oj.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001974_ohler55_oj.md)
```
gem install oj
```

or in Bundler:

```
gem 'oj'
```

----

## Installation [0001_0500/001951_kpumuk_meta-tags.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001951_kpumuk_meta-tags.md)

Add the "meta-tags" gem to your `Gemfile`.

```ruby
gem 'meta-tags'
```

And run `bundle install` command.

----

## Installation [0001_0500/001921_cerebris_jsonapi-resources.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001921_cerebris_jsonapi-resources.md)

Add JR to your application's `Gemfile`:

``` 
gem 'jsonapi-resources'
```

And then execute:

```bash 
bundle
```

Or install it yourself as:

```bash 
gem install jsonapi-resources
```

**For further usage see the [v0.10 alpha Guide](http://jsonapi-resources.com/v0.10/guide/)**

----

## Installation [0001_0500/001919_kjvarga_sitemap_generator.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001919_kjvarga_sitemap_generator.md)

----

## Installation [0001_0500/001918_httprb_http.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001918_httprb_http.md)

Add this line to your application's Gemfile:
```ruby
gem "http"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install http
```

Inside of your Ruby program do:
```ruby
require "http"
```

...to pull it in as a dependency.


----

## Installation [0001_0500/001907_feedjira_feedjira.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001907_feedjira_feedjira.md)

Add this line to your application's Gemfile:

```ruby
gem "feedjira"
```

----

## Installation [0001_0500/001875_jch_html-pipeline.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001875_jch_html-pipeline.md)

Add this line to your application's Gemfile:

```ruby
gem 'html-pipeline'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install html-pipeline
```

----

## Installation [0001_0500/001864_galetahub_ckeditor.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001864_galetahub_ckeditor.md)

For basic usage just include the ckeditor gem:

```
gem 'ckeditor'
```

or if you'd like to use the latest version from Github:

```
gem 'ckeditor', github: 'galetahub/ckeditor'
```

The last version works with Rails 3.2.x is 4.1.3

```ruby
gem 'ckeditor', '4.1.3'
```

Include this inside your `config/initializers/assets.rb`:

```
Rails.application.config.assets.precompile += %w( ckeditor/*)
```

For file upload support, you must generate the necessary file storage models.
The currently supported backends are:

* ActiveRecord (paperclip, carrierwave, dragonfly, refile)
* Mongoid (paperclip, carrierwave, dragonfly)

----

## Installation [0001_0500/001864_interagent_prmd.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001864_interagent_prmd.md)

Install the command-line tool with:

```bash
$ gem install prmd
```

If you're using prmd within a Ruby project, you may want to add it
to the application's Gemfile:

```ruby
gem 'prmd'
```

```bash
$ bundle install
```

----

## Installation [0001_0500/001851_etsy_deployinator.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001851_etsy_deployinator.md)

This demo assumes you are using bundler to install deployinator. If you aren't
you can skip the bundler steps.

- Create a directory for your project to hold your specific code (outside of the gem and this will be your own internal repository). `mkdir test_stacks`

- Create a Gemfile for bundler:

```ruby
    source 'https://rubygems.org'
    gem 'etsy-deployinator', :git => 'https://github.com/etsy/deployinator.git', :branch => 'master', :require => 'deployinator'
```

- Install all required gems with bundler:

```sh
    $ bundle install --path vendor/bundle
```

- Run the following command to make deployinator gem's rake tasks available to you:

```sh
    $ shopt -s xpg_echo
    $ echo "require 'deployinator'\nload 'deployinator/tasks/initialize.rake' " > Rakefile
```

- Create a binstub for the deploy log tailing backend:

```sh
    bundle binstub etsy-deployinator
```

- Initialize the project directory by running the following command replacing ___Company___ with the name of your company/organization. This must start with a capital letter.

```sh
    $ bundle exec rake 'deployinator:init[Company]'
```

- Run the tailer as a background service (using whatever init flavor you like)

```sh
    ./bin/deployinator-tailer.rb &
```


----

## Installation [0001_0500/001828_roo-rb_roo.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001828_roo-rb_roo.md)

Install as a gem

    $ gem install roo

Or add it to your Gemfile

```ruby
gem "roo", "~> 2.7.0"
```
----

## Installation [0001_0500/001816_influitive_apartment.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001816_influitive_apartment.md)

----

## Installation [0001_0500/001788_prontolabs_pronto.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001788_prontolabs_pronto.md)

**Pronto**'s installation is standard for a Ruby gem:

```sh
$ gem install pronto
```

You'll also want to install some [runners](#runners) to go along with the main gem:

```sh
$ gem install pronto-rubocop
$ gem install pronto-flay
```

If you'd rather install Pronto using `bundler`, you don't need to require it,
unless you're gonna run it from Ruby (via Rake task, for example):

```ruby
gem 'pronto'
gem 'pronto-rubocop', require: false
gem 'pronto-flay', require: false
```

----

## Installation [0001_0500/001750_oauth-xx_oauth2.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001750_oauth-xx_oauth2.md)

Add this line to your application's Gemfile:

```ruby
gem 'oauth2'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install oauth2

----

## Installation [0001_0500/001748_remiprev_teamocil.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001748_remiprev_teamocil.md)

```bash
# Install the `teamocil` Ruby gem
$ gem install teamocil

# Create your layout directory
$ mkdir ~/.teamocil

# Edit ~/.teamocil/sample.yml (look for sample layouts in this very `README.md`)
$ teamocil --edit sample

# Launch tmux
$ tmux

# Run your newly-created sample layout
$ teamocil sample
```

----

## Installation [0001_0500/001742_trailblazer_roar.markdown](https://github.com/ts-3156/readmes/blob/master/0001_0500/001742_trailblazer_roar.markdown)

The roar gem runs with all Ruby versions >= 1.9.3.

```ruby
gem 'roar'
```

To use roar with Ruby versions < 2.2.0, add a version pin to your Gemfile:

```ruby
gem 'sinatra', '~> 1.4'
```

----

## Installation [0001_0500/001733_airbnb_synapse.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001733_airbnb_synapse.md)

To download and run the synapse binary, first install a version of ruby. Then,
install synapse with:

```bash
$ mkdir -p /opt/smartstack/synapse
# If you are on Ruby 2.X use --no-document instead of --no-ri --no-rdoc

# If you want to install specific versions of dependencies such as an older
# version of the aws-sdk, the docker-api, etc, gem install that here *before*
# gem installing synapse.

# Example:
# $ gem install aws-sdk -v XXX

$ gem install synapse --install-dir /opt/smartstack/synapse --no-ri --no-rdoc

# If you want to install specific plugins such as watchers or config generators
# gem install them *after* you install synapse.

# Example:
# $ gem install synapse-nginx --install-dir /opt/smartstack/synapse --no-ri --no-rdoc
```

This will download synapse and its dependencies into /opt/smartstack/synapse. You
might wish to omit the `--install-dir` flag to use your system's default gem
path, however this will require you to run `gem install synapse` with root
permissions.

You can now run the synapse binary like:

```bash
export GEM_PATH=/opt/smartstack/synapse
/opt/smartstack/synapse/bin/synapse --help
```

Don't forget to install HAProxy or NGINX or whatever proxy your `config_generator`
is configuring.

----

## Installation and Usage Guides [0001_0500/001711_websocket-rails_websocket-rails.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001711_websocket-rails_websocket-rails.md)

* [Installation
  Guide](https://github.com/websocket-rails/websocket-rails/wiki/Installation-and-Setup)
* [Event
  Router](https://github.com/websocket-rails/websocket-rails/wiki/The-Event-Router)
* [WebsocketRails Controllers](https://github.com/websocket-rails/websocket-rails/wiki/WebsocketRails Controllers)
* [Using the JavaScript
  Client](https://github.com/websocket-rails/websocket-rails/wiki/Using-the-JavaScript-Client)
* [Using
  Channels](https://github.com/websocket-rails/websocket-rails/wiki/Working-with-Channels)
* [Using Private Channels](https://github.com/websocket-rails/websocket-rails/wiki/Using-Private-Channels)
* [The
  DataStore](https://github.com/websocket-rails/websocket-rails/wiki/Using-the-DataStore)
* [Reloading Controllers In Development](https://github.com/websocket-rails/websocket-rails/wiki/Reloading-Controllers-In-Development)
* [Multiple Servers and Background Jobs](https://github.com/websocket-rails/websocket-rails/wiki/Multiple-Servers-and-Background-Jobs)
* [Standalone Server Mode](https://github.com/websocket-rails/websocket-rails/wiki/Standalone-Server-Mode)

----

## Installation [0001_0500/001707_piotrmurach_tty.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001707_piotrmurach_tty.md)

Add this line to your application's Gemfile to install all components:

    gem 'tty'

or install a particular component:

    gem 'tty-*'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tty

----

## Installation and Setup [0001_0500/001689_radiant_radiant.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001689_radiant_radiant.md)

Radiant is a traditional Ruby on Rails application, meaning that you can
configure and run it the way you would a normal Rails application.

See the [INSTALL](INSTALL.md) file for more details.

----

## Installation [0001_0500/001682_globalize_globalize.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001682_globalize_globalize.md)

To install the ActiveRecord 4.2.x compatible version of Globalize with its default setup, just use:

```ruby
gem install globalize
```

When using bundler put this in your Gemfile:

```ruby
gem 'globalize', '~> 5.1.0'
```

Please help us by letting us know what works, and what doesn't, when using pre-release code.

Put in your Gemfile

```ruby
gem 'globalize', git: 'https://github.com/globalize/globalize'
gem 'activemodel-serializers-xml'
```

To use the version of globalize for ActiveRecord 4.0 or 4.1, specify:

```ruby
gem 'globalize', '~> 4.0.3'
```

To use the version of globalize for ActiveRecord 3.1 or 3.2, specify:

````ruby
gem 'globalize', '~> 3.1.0'
````

(If you are using ActiveRecord 3.0, use version 3.0: `gem 'globalize', '3.0.4'`.)

The [`3-1-stable` branch](https://github.com/globalize/globalize/tree/3-1-stable) of this repository corresponds to the latest ActiveRecord 3 version of globalize. Note that `globalize3` has been deprecated and you are encouraged to update your Gemfile accordingly.

----

## Installation [0001_0500/001675_remiprev_her.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001675_remiprev_her.md)

In your Gemfile, add:

```ruby
gem "her"
```

That’s it!

----

## Installation [0001_0500/001672_AssetSync_asset_sync.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001672_AssetSync_asset_sync.md)

Since 2.x, Asset Sync depends on gem `fog-core` instead of `fog`.  
This is due to `fog` is including many unused storage provider gems as its dependencies.  

Asset Sync has no idea about what provider will be used,  
so you are responsible for bundling the right gem for the provider to be used.  

In your Gemfile:
```ruby
gem "asset_sync"
gem "fog-aws"
```

Or, to use Azure Blob storage, configure as this.

``` ruby
gem "asset_sync"
gem "fog-azure-rm"
```


----

## Installation [0001_0500/001664_dtan4_terraforming.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001664_dtan4_terraforming.md)

Add this line to your application's Gemfile:

```ruby
gem 'terraforming'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install terraforming

----

## Installation [0001_0500/001644_plataformatec_responders.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001644_plataformatec_responders.md)

Add the responders gem to your Gemfile:

    gem "responders"

Update your bundle and run the install generator:

    $ bundle install
    $ rails g responders:install

If you are including this gem to support backwards compatibilty for responders in previous releases of Rails, you only need to include the gem and bundle.

    $ bundle install

----

## Installation [0001_0500/001621_technoweenie_restful-authentication.markdown](https://github.com/ts-3156/readmes/blob/master/0001_0500/001621_technoweenie_restful-authentication.markdown)

This is a basic restful authentication generator for rails, taken from
acts as authenticated.  Currently it requires Rails 1.2.6 or above.

**IMPORTANT FOR RAILS > 2.1 USERS** To avoid a @NameError@ exception ("lighthouse tracker ticket":http://rails_security.lighthouseapp.com/projects/15332-restful_authentication/tickets/2-not-a-valid-constant-name-errors#ticket-2-2), check out the code to have an _underscore_ and not _dash_ in its name:
* either use <code>git clone git://github.com/technoweenie/restful-authentication.git restful_authentication</code>
* or rename the plugin's directory to be <code>restful_authentication</code> after fetching it.

To use the generator:

  ./script/generate authenticated user sessions \
    --include-activation \
    --stateful \
    --rspec \
    --skip-migration \
    --skip-routes \
    --old-passwords

* The first parameter specifies the model that gets created in signup (typically
  a user or account model).  A model with migration is created, as well as a
  basic controller with the create method. You probably want to say "User" here.

* The second parameter specifies the session controller name.  This is the
  controller that handles the actual login/logout function on the site.
  (probably: "Session").

* --include-activation: Generates the code for a ActionMailer and its respective
  Activation Code through email.

* --stateful: Builds in support for acts_as_state_machine and generates
  activation code.  (@--stateful@ implies @--include-activation@). Based on the
  idea at [[http://www.vaporbase.com/postings/stateful_authentication]]. Passing
  @--skip-migration@ will skip the user migration, and @--skip-routes@ will skip
  resource generation -- both useful if you've already run this generator.
  (Needs the "acts_as_state_machine plugin":http://elitists.textdriven.com/svn/plugins/acts_as_state_machine/,
  but new installs should probably run with @--aasm@ instead.)

* --aasm: Works the same as stateful but uses the "updated aasm gem":http://github.com/rubyist/aasm/tree/master

* --rspec: Generate RSpec tests and Stories in place of standard rails tests.
  This requires the
    "RSpec and Rspec-on-rails plugins":http://rspec.info/
  (make sure you "./script/generate rspec" after installing RSpec.)  The rspec
  and story suite are much more thorough than the rails tests, and changes are
  unlikely to be backported.

* --old-passwords: Use the older password scheme (see [[#COMPATIBILITY]], above)

* --skip-migration: Don't generate a migration file for this model

* --skip-routes: Don't generate a resource line in @config/routes.rb@

***************************************************************************
<a id="POST-INSTALL"/> </a>

----

## Installation [0001_0500/001620_octopress_octopress.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001620_octopress_octopress.md)

Install Octopress manually:

    $ gem install octopress

Or if you use [Bundler](http://bundler.io), add this line to your Gemfile:

    gem 'octopress', '~> 3.0'

And then run:

    $ bundle

New to bundler? Run `gem install bundler` then create a file named `Gemfile` in your site's root directory with the following content:

```
source 'https://rubygems.org'

gem 'octopress', '~> 3.0'
```

Run `bundle` to install the gems specified in your Gemfile.

----

## Installation [0001_0500/001620_fnando_browser.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001620_fnando_browser.md)

```bash
gem install browser
```

----

## Installation [0001_0500/001609_yuki24_did_you_mean.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001609_yuki24_did_you_mean.md)

Ruby 2.3 and later ships with this gem and it will automatically be `require`d when a Ruby process starts up. No special setup is required.

----

## Installation [0001_0500/001604_jondot_sneakers.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001604_jondot_sneakers.md)

Add this line to your application's Gemfile:

```ruby
gem 'sneakers'
```

And then execute:

```shell-session
$ bundle
```

Or install it yourself as:

```shell-session
$ gem install sneakers
```

----

## Installation [0001_0500/001580_junegunn_redis-stat.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001580_junegunn_redis-stat.md)

```
gem install redis-stat
```

If you have trouble setting up a Ruby environment, you can [download the
executable JAR file](https://github.com/junegunn/redis-stat/releases) and use
it instead.

----

## Installation [0001_0500/001579_propublica_upton.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001579_propublica_upton.md)

Add the gem to your `Gemfile` and run the bundle command:

```ruby
gem 'upton'
```

----

## Installation [0001_0500/001575_thoughtbot_refills.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001575_thoughtbot_refills.md)

1. Install Refills’ dependencies: [Bourbon](https://github.com/thoughtbot/bourbon#installation), [Neat](https://github.com/thoughtbot/neat#installation) and [jQuery](http://jquery.com/download) (if you plan to use any components that require JavaScript).

2. Go to the [Refills website](http://refills.bourbon.io), click “Show Code” under the component or pattern that you want and copy-paste it into your project.

3. Customize: Most of the components and patterns have a set of Sass variables that allow you to quickly tweak the look and feel.

## Installation for Ruby on Rails [0001_0500/001575_thoughtbot_refills.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001575_thoughtbot_refills.md)

Alternative to copy-pasting manually, we also have a Refills gem that allows you to add components and patterns via Rake tasks.

1. Add Refills to your Gemfile:

  ```ruby
  gem "refills", group: :development
  ```

2. Then run:

  ```bash
  bundle install
  ```

3. Use the following Rails generators:

  List all available snippets:

  ```bash
  rails generate refills:list
  ```

  Add a snippet:

  ```bash
  rails generate refills:import SNIPPET
  ```

  If you want to generate coffeescript instead of javascript, simply add `--coffee`

  ```bash
  rails generate refills:import SNIPPET --coffee
  ```

  This copies the snippet’s partial to `app/views/refills`, the stylesheet to `app/assets/stylesheets/refills` and the JavaScript to `app/assets/javascripts/refills`

----

## Installation [0001_0500/001572_lifo_cramp.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001572_lifo_cramp.md)

Add this line to your application's Gemfile:

    gem 'cramp'

And then execute:

    $ bundle

Manual installation:

    $ gem install cramp

----

## Installation [0001_0500/001561_jekyll_jekyll-admin.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001561_jekyll_jekyll-admin.md)

Refer to the [installing plugins](https://jekyllrb.com/docs/plugins/#installing-a-plugin) section of Jekyll's documentation and install the `jekyll-admin` plugin as you would any other plugin. Here's the short version:

1.  Add the following to your site's Gemfile:

    ```ruby
    gem 'jekyll-admin', group: :jekyll_plugins
    ```

2.  Run `bundle install`

----

## Installation [0001_0500/001551_liftoffcli_liftoff.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001551_liftoffcli_liftoff.md)

    brew tap liftoffcli/formulae
    brew install liftoff

Liftoff was previously distributed via RubyGems. This method of installation has
been deprecated, and all new releases will be done through Homebrew. If you are
migrating from RubyGems, you should uninstall the gem version to avoid confusion
in the future.

----

## Installation [0001_0500/001474_petems_tugboat.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001474_petems_tugboat.md)

    gem install tugboat

Please note that Tugboat version 0.2.0 and up requires Ruby 1.9 or higher.

----

## Installation [0001_0500/001442_ankane_blazer.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001442_ankane_blazer.md)

Add this line to your application’s Gemfile:

```ruby
gem 'blazer'
```

Run:

```sh
rails generate blazer:install
rails db:migrate
```

And mount the dashboard in your `config/routes.rb`:

```ruby
mount Blazer::Engine, at: "blazer"
```

For production, specify your database:

```ruby
ENV["BLAZER_DATABASE_URL"] = "postgres://user:password@hostname:5432/database"
```

Blazer tries to protect against queries which modify data (by running each query in a transaction and rolling it back), but a safer approach is to use a read only user. [See how to create one](#permissions).

----

## Installation [0001_0500/001435_stripe_mosql.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001435_stripe_mosql.md)

Install from Rubygems as:

    $ gem install mosql

Or build from source by:

    $ gem build mosql.gemspec

And then install the built gem.

----

## Installation [0001_0500/001435_jnunemaker_flipper.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001435_jnunemaker_flipper.md)

Add this line to your application's Gemfile:

    gem 'flipper'

And then execute:

    $ bundle

Or install it yourself with:

    $ gem install flipper

----

## Installation [0001_0500/001434_jnunemaker_flipper.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001434_jnunemaker_flipper.md)

Add this line to your application's Gemfile:

    gem 'flipper'

And then execute:

    $ bundle

Or install it yourself with:

    $ gem install flipper

----

## Installation [0001_0500/001422_stripe_einhorn.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001422_stripe_einhorn.md)

Install from Rubygems as:

    $ gem install einhorn

Or build from source by:

    $ gem build einhorn.gemspec

And then install the built gem.

----

## Installation [0001_0500/001408_jejacks0n_teaspoon.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001408_jejacks0n_teaspoon.md)

Add the framework-specific Teaspoon gem to your Gemfile. In most cases you'll want to restrict it to the `:development, :test` groups. The available gems are `teaspoon-jasmine`, `teaspoon-mocha` and `teaspoon-qunit`. If you're unsure which framework you'd like to use, we think Jasmine is a good starting place.

```ruby
group :development, :test do
  gem "teaspoon-jasmine"
end
```

Run the install generator to get the environment file and a basic spec helper. If you want a CoffeeScript spec helper, you can tell the generator. Run the install generator with the `--help` flag for a list of available options.

```
rails generate teaspoon:install --coffee
```

To run Teaspoon headless you'll need PhantomJS, Selenium Webdriver or Capybara Webkit. We recommend PhantomJS, which you can install with homebrew, npm or [as a download](http://phantomjs.org/download.html).


----

## Installation [0001_0500/001404_donmelton_video_transcoding.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001404_donmelton_video_transcoding.md)

My Video Transcoding tools are designed to work on macOS, Linux and Windows. They're packaged as a Gem and require Ruby version 2.0 or later. See "[Installing Ruby](https://www.ruby-lang.org/en/documentation/installation/)" if you don't have the proper version on your platform.

Use this command to install the package: 

    gem install video_transcoding

You may need to prefix that command with `sudo` in some environments: 

    sudo gem install video_transcoding

----

## Installation [0001_0500/001379_attr-encrypted_attr_encrypted.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001379_attr-encrypted_attr_encrypted.md)

Add attr_encrypted to your gemfile:

```ruby
  gem "attr_encrypted", "~> 3.1.0"
```

Then install the gem:

```bash
  bundle install
```

----

## Installation [0001_0500/001373_assaf_vanity.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001373_assaf_vanity.md)

Add to your Gemfile:

```ruby
gem "vanity"
```

(For support for older versions of Rails and Ruby 1.8, please see the [1.9.x
branch](https://github.com/assaf/vanity/tree/1-9-stable).)

----

## Installation [0001_0500/001372_chrismccord_render_sync.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001372_chrismccord_render_sync.md)

----

## Installation [0001_0500/001366_matthuhiggins_foreigner.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001366_matthuhiggins_foreigner.md)

Add the following to your Gemfile:
```ruby
gem 'foreigner'
```
----

## Installation [0001_0500/001364_thoughtbot_bitters.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001364_thoughtbot_bitters.md)

1. Install the Bitters gem using the [RubyGems] package manager:

    ```bash
    gem install bitters
    ```

1. Install [Bourbon][bourbon-install].

1. Install the Bitters library into the current directory by running the
   following command at the command-line. If you’re using Ruby on Rails, run the
   command in `app/assets/stylesheets`:

    ```bash
    bitters install
    ```

    A `base` directory will be generated which contains all of the Bitters
    files.

1. Import Bitters after Bourbon in your `application.css.scss` or main manifest
   file. All additional stylesheets should be imported below Bitters.

    ```scss
    @import "bourbon";
    @import "base/base";
    ```

1. Once Bourbon and Bitters are set up, you can begin to import your styles
   below them.

    ```scss
    @import "bourbon";
    @import "base/base";
    @import "my-project-styles";
    …
    ```

[RubyGems]: https://rubygems.org
[bourbon-install]: https://github.com/thoughtbot/bourbon#installation

----

## Installation [0001_0500/001364_desktoppr_wbench.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001364_desktoppr_wbench.md)

You can install the latest stable gem by running:

```bash
$ gem install wbench
```

If you're running an older version (1.8) of ruby, you'll need the JSON gem.

```bash
$ gem install json
```

You will need to install [Google Chrome](http://www.google.com/chrome) as well as the chromedriver utility.
You can install chromedriver (on OSX) with homebrew:

```bash
$ brew install chromedriver
```

If you are not using Homebrew on OSX, download the latest binary version of [chromedriver](http://chromedriver.storage.googleapis.com/index.html).
Then unpack the ZIP archive and copy the chromedriver binary to the /usr/bin directory:
```bash
$ sudo cp /location/of/chromedriver/binary /usr/bin
```
Test that chromedriver is working by typing "chromedriver":
```bash
$ chromedriver
Starting ChromeDriver (v2.7.236836) on port 9515
```
Note that you will NOT need the chromedriver-utility gem if you install the binary in this manner.

Alternatively you can install firefox and use it with wbench. See [Running other browsers](#running-other-browsers) for more info.

----

## Installation [0001_0500/001357_glebm_i18n-tasks.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001357_glebm_i18n-tasks.md)

i18n-tasks can be used with any project using the ruby [i18n gem][i18n-gem] (default in Rails).

Add i18n-tasks to the Gemfile:

```ruby
gem 'i18n-tasks', '~> 0.9.28'
```

Copy the default [configuration file](#configuration):

```console
$ cp $(i18n-tasks gem-path)/templates/config/i18n-tasks.yml config/
```

Copy rspec test to test for missing and unused translations as part of the suite (optional):

```console
$ cp $(i18n-tasks gem-path)/templates/rspec/i18n_spec.rb spec/
```

Or for minitest:

```console
$ cp $(i18n-tasks gem-path)/templates/minitest/i18n_test.rb test/
```

----

## Installation [0001_0500/001350_brainspec_enumerize.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001350_brainspec_enumerize.md)

Add this line to your application's Gemfile:

    gem 'enumerize'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install enumerize

----

## Installation [0001_0500/001338_Smashing_smashing.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001338_Smashing_smashing.md)

```bash
# Install bundler
$ gem install bundler
# Install smashing
$ gem install smashing
# Create a new project
$ smashing new my-project
# Change Directory into the project
$ cd my-project
# Install the bundle of project specific gems
$ bundle
# Start the example dashboard!
$ smashing start
```

[Check out our wiki](https://github.com/Smashing/smashing/wiki).

Note: This is a fork of the Dashing project, which is no longer being maintained. Read about that [here](https://github.com/Shopify/dashing/issues/711).

----

## Installation [0001_0500/001337_basecamp_local_time.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001337_basecamp_local_time.md)

1. Add `gem 'local_time'` to your Gemfile.
2. Include `local-time.js` in your application's JavaScript bundle.

    Using the asset pipeline:
    ```js
    //= require local-time
    ```
    Using the [local-time npm package](https://www.npmjs.com/package/local-time):
    ```js
    import LocalTime from "local-time"
    LocalTime.start()
    ```

----

## Installation [0001_0500/001334_Shopify_identity_cache.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001334_Shopify_identity_cache.md)

Add this line to your application's Gemfile:

```ruby
gem 'identity_cache'
gem 'cityhash'        # optional, for faster hashing (C-Ruby only)
gem 'memcached_store' # for CAS support, needed for cache consistency
```

And then execute:

    $ bundle


Add the following to all your environment/*.rb files (production/development/test):

```ruby
config.identity_cache_store = :memcached_store,
  Memcached::Rails.new(servers: ["mem1.server.com"],
    support_cas: true,
    auto_eject_hosts: false,  # avoids more cache consistency issues
    expires_in: 6.hours.to_i, # in case of network errors when sending a delete
  )
```

Add an initializer with this code:

```ruby
IdentityCache.cache_backend = ActiveSupport::Cache.lookup_store(*Rails.configuration.identity_cache_store)
```

----

## Installation [0001_0500/001325_Chris911_iStats.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001325_Chris911_iStats.md)

    $ gem install iStats

----

## Installation [0001_0500/001314_swanandp_acts_as_list.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001314_swanandp_acts_as_list.md)

In your Gemfile:

    gem 'acts_as_list'

Or, from the command line:

    gem install acts_as_list

----

## Installation [0001_0500/001283_nathanl_authority.markdown](https://github.com/ts-3156/readmes/blob/master/0001_0500/001283_nathanl_authority.markdown)

Starting from a clean commit status, add `authority` to your Gemfile, then `bundle`.

If you're using Rails, run `rails g authority:install`. Otherwise, pass a block to `Authority.configure` with [configuration options](https://github.com/nathanl/authority/blob/master/lib/generators/templates/authority_initializer.rb) somewhere when your application boots up.

<a name="defining_your_abilities">
----

## Installation [0001_0500/001281_grobie_soundcloud2000.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001281_grobie_soundcloud2000.md)

Assuming you have Ruby/Rubygems installed, you need portaudio and mpg123 as
library to compile the native extensions.

----

## Installation [0001_0500/001270_rails_strong_parameters.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001270_rails_strong_parameters.md)

In Gemfile:

``` ruby
gem 'strong_parameters'
```

and then run `bundle`. To activate the strong parameters, you need to include this module in
every model you want protected.

``` ruby
class Post < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
end
```

Alternatively, you can protect all Active Record resources by default by creating an initializer and pasting the line:

``` ruby
ActiveRecord::Base.send(:include, ActiveModel::ForbiddenAttributesProtection)
```

If you want to now disable the default whitelisting that occurs in Rails 3.2, change the `config.active_record.whitelist_attributes` property in your `config/application.rb`:

``` ruby
config.active_record.whitelist_attributes = false
```

This will allow you to remove / not have to use `attr_accessible` and do mass assignment inside your code and tests.

----

## Installation [0001_0500/001252_davidcelis_recommendable.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001252_davidcelis_recommendable.md)

Add the following to your application's `Gemfile`:

``` ruby
gem 'recommendable'
```

Please note that you currently must need to place Recommendable below your ORM and queueing system in the Gemfile. If you are using Sidekiq and ActiveRecord, please place `gem recommendable` below both `gem 'rails'` and  `gem 'sidekiq'`.

After bundling, you should configure Recommendable. Do this somewhere after you've required it, but before it's actually used. For example, Rails users would create an initializer (`config/initializers/recommendable.rb`):

```ruby
require 'redis'

Recommendable.configure do |config|
  # Recommendable's connection to Redis.
  #
  # Default: localhost:6379/0
  config.redis = Redis.new(:host => 'localhost', :port => 6379, :db => 0)

  # A prefix for all keys Recommendable uses.
  #
  # Default: recommendable
  config.redis_namespace = :recommendable

  # Whether or not to automatically enqueue users to have their recommendations
  # refreshed after they like/dislike an item.
  #
  # Default: true
  config.auto_enqueue = true

  # The number of nearest neighbors (k-NN) to check when updating
  # recommendations for a user. Set to `nil` if you want to check all
  # neighbors as opposed to a subset of the nearest ones. Set this to a lower
  # number to improve Redis memory usage.
  #
  # Default: nil
  config.nearest_neighbors = nil

  # Like kNN, but also uses some number of most dissimilar users when
  # updating recommendations for a user. Because, hey, disagreements are
  # just as important as agreements, right? If `nearest_neighbors` is set to
  # `nil`, this configuration is ignored. Set this to a lower number
  # to improve Redis memory usage.
  #
  # Default: nil
  config.furthest_neighbors = nil

  # The number of recommendations to store per user. Set this to a lower
  # number to improve Redis memory usage.
  #
  # Default: 100
  config.recommendations_to_store = 100
end
```

The values listed above are the defaults. I recommend playing around with the `nearest_neighbors` setting. A higher value will provide more accurate recommendations at the cost of more time spent generating them.

If your application uses multiple ORMs, you must configure Recommendable to use the correct one. For example:

```ruby
Recommendable.configure do |config|
  config.orm = :active_record
end
```

Important: in case of `active_record` with id of type `uuid`, use `:active_record_uuid`.

----

## Installation [0001_0500/001249_plataformatec_has_scope.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001249_plataformatec_has_scope.md)

Add `has_scope` to your Gemfile or install it from Rubygems.

```ruby
gem 'has_scope'
```

----

## Installation [0001_0500/001248_jashkenas_ruby-processing.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001248_jashkenas_ruby-processing.md)
We assume you have some version of ruby installed if not, there is a [guide to installing][] ruby on various platforms including windows. Or here is an [alternative install][] guide.

MacOSX users please try out this new  [method](https://github.com/jashkenas/ruby-processing/wiki/Installing-ruby-processing-on-the-mac) or see this [japanese][] guide.

Ideally you should install [jruby](http://jruby.org/download), at the very least you will have at least ruby-1.9.3 installed.  You should [download][] and install vanilla [processing-2.2.1](https://processing.org/download/) prior to installing this version of ruby-processing. You must also set the `PROCESSING_ROOT` in the .rp5rc yaml configuration file, the easiest way to do this is by running the [SetProcessingRoot.pde](https://gist.github.com/monkstone/7438749) sketch in the processing ide. 

Then install ruby-processing (from rubygems-org) in the usual way

`gem install ruby-processing` some systems eg Ubuntu may require `sudo` access

To install jruby-complete use our built in tool (relies on `wget` to download [jruby-complete-1.7.26](http://jruby.org/download))

since ruby-processing-2.5.0 `rp5 setup install` (was `install_jruby_complete`)

If you haven't got `wget` just download jruby-complete-1.7.26 (for ruby-processing-2.7.1) to the vendors folder (then run above tool)

The vendored jruby-complete is only required for application export, and running certain sketches (eg shader sketches see [wiki][]).

----

## Installation [0001_0500/001247_bootstrap-ruby_bootstrap_form.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001247_bootstrap-ruby_bootstrap_form.md)

Add it to your Gemfile:

```ruby
gem "bootstrap_form", ">= 4.0.0"
```

Then:

`bundle`

Then require the CSS in your `application.css` file:

```css
/*
 *= require rails_bootstrap_forms
 */
```

----

## Installation [0001_0500/001242_toptal_chewy.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001242_toptal_chewy.md)

Add this line to your application's Gemfile:

    gem 'chewy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chewy

----

## Installation [0001_0500/001239_deivid-rodriguez_pry-byebug.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001239_deivid-rodriguez_pry-byebug.md)

Add

```ruby
gem 'pry-byebug'
```

to your Gemfile and run

```console
bundle install
```

Make sure you include the gem globally or inside the `:test` group if you plan
to use it to debug your tests!

----

## Installation [0001_0500/001228_prat0318_json_resume.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001228_prat0318_json_resume.md)

    $ gem install json_resume

----

## Installation [0001_0500/001210_hexorx_countries.markdown](https://github.com/ts-3156/readmes/blob/master/0001_0500/001210_hexorx_countries.markdown)

``` bash
gem install countries
```

Or you can install via Bundler if you are using Rails. Add this line to your application's Gemfile:

```ruby
gem 'countries'
```

And then execute:

    $ bundle

----

## Installation [0001_0500/001208_rubymotion_BubbleWrap.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001208_rubymotion_BubbleWrap.md)

```ruby
gem install bubble-wrap
```

----

## Installation [0001_0500/001207_chanks_que.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001207_chanks_que.md)

Add this line to your application's Gemfile:

    gem 'que'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install que


----

## Installation [0001_0500/001189_neonichu_ThisCouldBeUsButYouPlaying.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001189_neonichu_ThisCouldBeUsButYouPlaying.md)

    $ gem install cocoapods-playgrounds

----

## Installation [0001_0500/001183_documentcloud_jammit.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001183_documentcloud_jammit.md)

`gem install jammit`

----

## Installation [0001_0500/001182_SamSaffron_message_bus.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001182_SamSaffron_message_bus.md)

Add this line to your application's Gemfile:

    gem 'message_bus'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install message_bus

----

## Installation [0001_0500/001169_vagrant-libvirt_vagrant-libvirt.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001169_vagrant-libvirt_vagrant-libvirt.md)

First, you should have both qemu and libvirt installed if you plan to run VMs
on your local system. For instructions, refer to your linux distribution's
documentation.

**NOTE:** Before you start using Vagrant-libvirt, please make sure your libvirt
and qemu installation is working correctly and you are able to create qemu or
kvm type virtual machines with `virsh` or `virt-manager`.

Next, you must have [Vagrant
installed](http://docs.vagrantup.com/v2/installation/index.html).
Vagrant-libvirt supports Vagrant 1.5, 1.6, 1.7 and 1.8.
*We only test with the upstream version!* If you decide to install your distros
version and you run into problems, as a first step you should switch to upstream.

Now you need to make sure your have all the build dependencies installed for
vagrant-libvirt. This depends on your distro. An overview:

* Ubuntu 12.04/14.04/16.04, Debian:
```shell
apt-get build-dep vagrant ruby-libvirt
apt-get install qemu libvirt-bin ebtables dnsmasq-base
apt-get install libxslt-dev libxml2-dev libvirt-dev zlib1g-dev ruby-dev
```

(It is possible some users will already have libraries from the third line installed, but this is the way to make it work OOTB.)

* CentOS 6, 7, Fedora 21:
```shell
yum install qemu libvirt libvirt-devel ruby-devel gcc qemu-kvm
```

* Fedora 22 and up:
```shell
dnf -y install qemu libvirt libvirt-devel ruby-devel gcc
```

* Arch linux: please read the related [ArchWiki](https://wiki.archlinux.org/index.php/Vagrant#vagrant-libvirt) page.
```shell
pacman -S vagrant
```

Now you're ready to install vagrant-libvirt using standard [Vagrant
plugin](http://docs.vagrantup.com/v2/plugins/usage.html) installation methods.

```shell
$ vagrant plugin install vagrant-libvirt
```

----

## Installation [0001_0500/001167_nesquena_gitdocs.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001167_nesquena_gitdocs.md)

Requires ruby1.9+ and rubygems. Install as a gem:

```
gem install gitdocs
```

If you have Growl installed on Max OSX, you'll probably want to run:

```
brew install caskroom/cask/brew-cask
brew install growlnotify
```

to enable Growl notification support.

----

## Installation [0001_0500/001167_bernat_best_in_place.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001167_bernat_best_in_place.md)

----

## Installation [0001_0500/001165_garybernhardt_selecta.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001165_garybernhardt_selecta.md)

Selecta requires Ruby 1.9.3 or better.

To install on your Mac using [Homebrew](http://brew.sh), say:

```shell
brew install selecta
```

For other systems, copy the `selecta` script to your path. ~/bin is a great
place for it. If you don't currently have a ~/bin, just do `mkdir ~/bin` and
add `export PATH="$HOME/bin:$PATH"` to your .zshrc, .bashrc, etc.

Selecta is *not installable as a Ruby gem*! Gems are only good for
application-specific tools. You want Selecta available at all times. If it were
a gem, it would sometimes disappear when switching Rubies, gemsets, etc.

----

## Installation [0001_0500/001137_notahat_machinist.markdown](https://github.com/ts-3156/readmes/blob/master/0001_0500/001137_notahat_machinist.markdown)

----

## Installation [0001_0500/001129_fgrehm_vagrant-lxc.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001129_fgrehm_vagrant-lxc.md)

```
vagrant plugin install vagrant-lxc
```


----

## Installation [0001_0500/001127_cypriss_mutations.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001127_cypriss_mutations.md)

    gem install mutations

Or add it to your Gemfile:

    gem 'mutations'

----

## Installation [0001_0500/001114_tweetstream_tweetstream.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001114_tweetstream_tweetstream.md)

    gem install tweetstream

----

## Installation... [0001_0500/001113_taf2_curb.markdown](https://github.com/ts-3156/readmes/blob/master/0001_0500/001113_taf2_curb.markdown)

... will usually be as simple as:

    $ gem install curb

On Windows, make sure you're using the [DevKit](http://rubyinstaller.org/downloads/) and
the [development version of libcurl](http://curl.haxx.se/gknw.net/7.39.0/dist-w32/curl-7.39.0-devel-mingw32.zip). Unzip, then run this in your command
line (alter paths to your curl location, but remember to use forward slashes):

    gem install curb --platform=ruby -- --with-curl-lib=C:/curl-7.39.0-devel-mingw32/lib --with-curl-include=C:/curl-7.39.0-devel-mingw32/include

Or, if you downloaded the archive:

    $ rake compile && rake install

If you have a weird setup, you might need extconf options. In this case, pass
them like so:

    $ rake compile EXTCONF_OPTS='--with-curl-dir=/path/to/libcurl --prefix=/what/ever' && rake install

Curb is tested only on GNU/Linux x86 and Mac OSX - YMMV on other platforms.
If you do use another platform and experience problems, or if you can
expand on the above instructions, please report the issue at http://github.com/taf2/curb/issues

On Ubuntu, the dependencies can be satisfied by installing the following packages:

    $ sudo apt-get install libcurl3 libcurl3-gnutls libcurl4-openssl-dev

On RedHat:

    $ sudo yum install ruby-devel libcurl-devel openssl-devel

Curb has fairly extensive RDoc comments in the source. You can build the
documentation with:

    $ rake doc

----

## Installation [0001_0500/001113_hartator_wayback-machine-downloader.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001113_hartator_wayback-machine-downloader.md)

You need to install Ruby on your system (>= 1.9.2) - if you don't already have it.
Then run:

    gem install wayback_machine_downloader

**Tip:** If you run into permission errors, you might have to add `sudo` in front of this command.

----

## Installation [0001_0500/001112_tybenz_vimdeck.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001112_tybenz_vimdeck.md)

Install a markdown syntax highlighting plugin for VIM. (I recommend [tpope/vim-markdown](http://github.com/tpope/vim-markdown))

Install the VIM plugin [SyntaxRange](https://github.com/vim-scripts/SyntaxRange).

```
gem install vimdeck
```

If you have problems getting RMagick to install, try installing [ImageMagick](http://www.imagemagick.org/) explicitly first. You may also need [MagickWand](http://www.imagemagick.org/script/magick-wand.php) and Ruby Development tools (libmagickwand-dev and ruby-dev respectively on Ubuntu).

**Note:** if you're on Mac OS Sierra, you may need to run the following command to get RMagick/vimdeck to install:

```
brew install imagemagick@6
brew link imagemagick@6 --force
gem install vimdeck
```


----

## Installation [0001_0500/001106_RubyMoney_money-rails.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001106_RubyMoney_money-rails.md)

Add this line to your application's Gemfile:

    gem 'money-rails', '~>1.12'

And then execute:

    $ bundle

Or install it yourself using:

    $ gem install money-rails

You can also use the money configuration initializer:

```
$ rails g money_rails:initializer
```

There, you can define the default currency value and set other
configuration parameters for the rails app.

Without Rails in rack-based applications, call during initialization:

```ruby
MoneyRails::Hooks.init
```

----

## Installation [0001_0500/001106_twbs_bootstrap-rubygem.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001106_twbs_bootstrap-rubygem.md)

Please see the appropriate guide for your environment of choice:

* [Ruby on Rails 4+](#a-ruby-on-rails) or other Sprockets environment.
* [Other Ruby frameworks](#b-other-ruby-frameworks) not on Rails.


----

## Installation [0001_0500/001089_fphilipe_premailer-rails.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001089_fphilipe_premailer-rails.md)

Simply add the gem to your `Gemfile`:

```ruby
gem 'premailer-rails'
```

premailer-rails and premailer require a gem that is used to parse the email's
HTML. For a list of supported gems and how to select which one to use, please
refer to the [*Adapter*
section](https://github.com/premailer/premailer#adapters) of premailer. Note
that there is no hard dependency from either gem so you should add one yourself.
Also note that this gem is only tested with [nokogiri].

----

## Installation [0001_0500/001089_brentd_xray-rails.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001089_brentd_xray-rails.md)

Xray depends on **jQuery**.

This gem should only be present during development. Add it to your Gemfile:

```ruby
group :development do
  gem 'xray-rails'
end
```

Then bundle and delete your cached assets:

```
$ bundle && rm -rf tmp/cache/assets
```

Restart your app, visit it in your browser, and press **cmd+shift+x** (Mac) or **ctrl+shift+x** to reveal the overlay.

----

## Installation [0001_0500/001088_rails_web-console.markdown](https://github.com/ts-3156/readmes/blob/master/0001_0500/001088_rails_web-console.markdown)

Add the following to your `Gemfile`:

```ruby
group :development do
  gem 'web-console'
end
```

----

## Installation [0001_0500/001075_jfirebaugh_konacha.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001075_jfirebaugh_konacha.md)

Add konacha to the `:test` and `:development` groups in the Gemfile and `bundle install`:

```ruby
group :test, :development do
  gem 'konacha'
end
```

----

## Installation [0001_0500/001058_twilio_twilio-ruby.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001058_twilio_twilio-ruby.md)

To install using [Bundler][bundler] grab the latest stable version:

```ruby
gem 'twilio-ruby', '~> 5.19.0'
```

To manually install `twilio-ruby` via [Rubygems][rubygems] simply gem install:

```bash
gem install twilio-ruby -v 5.19.0
```

To build and install the development branch yourself from the latest source:

```bash
git clone git@github.com:twilio/twilio-ruby.git
cd twilio-ruby
make install
```

----

## Installation [0001_0500/001048_fgrehm_vagrant-cachier.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001048_fgrehm_vagrant-cachier.md)

Make sure you have Vagrant 1.4+ and run:

```
vagrant plugin install vagrant-cachier
```

----

## Installation & Setup [0001_0500/001037_BlackrockDigital_startbootstrap-clean-blog-jekyll.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001037_BlackrockDigital_startbootstrap-clean-blog-jekyll.md)

----

## Installation [0001_0500/001036_elcuervo_airplay.md](https://github.com/ts-3156/readmes/blob/master/0001_0500/001036_elcuervo_airplay.md)

----

## Installation [0501_1000/001028_andrewculver_koudoku.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/001028_andrewculver_koudoku.md)

Include the following in your `Gemfile`:

```ruby
    gem 'koudoku'
```    

After running `bundle install`, you can run a Rails generator to do the rest. Before installing, the model you'd like to have own subscriptions must already exist. (In many cases this will be `user`. It may also be something like `company`, etc.)

```ruby
    rails g koudoku:install user
    rake db:migrate
```
    
Add the following to `app/views/layouts/application.html.erb` before your `<head>` tag closes:

```ruby
    <%= yield :koudoku %>
```
    
(This allows us to inject a Stripe `<script>` tag in the correct place. If you don't, the payment form will not work.)
  
After installing, you'll need to add some subscription plans. (You can see an explanation of each of the attributes in the table below.)

**Note:** You need to create the plans in your [Stripe Dashboard](https://dashboard.stripe.com) separately. 

```ruby
    Plan.create({
      name: 'Personal',
      price: 10.00,
      interval: 'month',
      stripe_id: '1',
      features: ['1 Project', '1 Page', '1 User', '1 Organization'].join("\n\n"),
      display_order: 1
    })

    Plan.create({
      name: 'Team',
      highlight: true, # This highlights the plan on the pricing page.
      price: 30.00,
      interval: 'month',
      stripe_id: '2',
      features: ['3 Projects', '3 Pages', '3 Users', '3 Organizations'].join("\n\n"),
      display_order: 2
    })
    
    Plan.create({
      name: 'Enterprise',
      price: 100.00, 
      interval: 'month',
      stripe_id: '3', 
      features: ['10 Projects', '10 Pages', '10 Users', '10 Organizations'].join("\n\n"), 
      display_order: 3
    })
```    

To help you understand the attributes:
    
| Attribute       | Type    | Function |
| --------------- | ------- | -------- |
| `name`          | string  | Name for the plan to be presented to customers. |
| `price`         | float   | Price per billing cycle. |
| `interval`      | string  | *Optional.* What is the billing cycle? Valid options are `month`, `year`, `week`, `3-month`, `6-month`. Defaults to `month`. |
| `stripe_id`     | string  | The Plan ID in Stripe. |
| `features`      | string  | A list of features. Supports Markdown syntax. |
| `display_order` | integer | Order in which to display plans. |
| `highlight`     | boolean | *Optional.* Whether to highlight the plan on the pricing page. |

The only view installed locally into your app by default is the `koudoku/subscriptions/_social_proof.html.erb` partial which is displayed alongside the pricing table. It's designed as a placeholder where you can provide quotes about your product from customers that could positively influence your visitors.
    
----

## Installation [0501_1000/001025_owen2345_camaleon-cms.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/001025_owen2345_camaleon-cms.md)
* Install Ruby on Rails
* Create your rails project

  ```
  rails new my_project
  ```
* Add the gem in your Gemfile 

  ```
  gem "camaleon_cms",  '>= 2.4.5' # (Current stable versions are 2.4.4.5, 2.4.3.10, 2.3.6, 2.2.1, 2.1.1)
  # OR
  # gem "camaleon_cms", github: 'owen2345/camaleon-cms' # latest development version

  # gem 'draper', '~> 3' # for Rails 5+
  ```

* Install required Gem and dependencies

  ```
  bundle install
  ```
* Camaleon CMS Installation

  ```
  rails generate camaleon_cms:install
  ```
* (Optional) Before continue you can configure your CMS settings in (my_app/config/system.json), [here](config/system.json) you can see the full settings.
* Create database structure
  ```
  rake camaleon_cms:generate_migrations
  # before running migrations you can customize copied migration files
  rake db:migrate
  ```

* Start your server

  ```
  rails server
  ```

* Go to your browser and visit http://localhost:3000/

----

## Installation [0501_1000/001025_michelson_lazy_high_charts.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/001025_michelson_lazy_high_charts.md)

----

## Installation [0501_1000/001020_AaronLasseigne_active_interaction.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/001020_AaronLasseigne_active_interaction.md)

Add it to your Gemfile:

``` rb
gem 'active_interaction', '~> 3.6'
```

Or install it manually:

``` sh
$ gem install active_interaction --version '~> 3.6'
```

This project uses [Semantic Versioning][]. Check out [GitHub releases][] for a
detailed list of changes. For help upgrading to version 2, please read [the
announcement post][].

ActiveInteraction works with Ruby 2.0 through 2.4 and ActiveModel 4.0 through
5.0. If you want to use ActiveInteraction with an older version of Ruby or
ActiveModel, use ActiveInteraction < 3.0.0.

----

## Installation [0501_1000/001020_zipmark_rspec_api_documentation.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/001020_zipmark_rspec_api_documentation.md)

Add rspec_api_documentation to your Gemfile

    gem 'rspec_api_documentation'

Bundle it!

    $ bundle install

Set up specs.

    $ mkdir spec/acceptance
    $ vim spec/acceptance/orders_spec.rb

```ruby
require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource "Orders" do
  get "/orders" do
    example "Listing orders" do
      do_request

      status.should == 200
    end
  end
end
```

Generate the docs!

    $ rake docs:generate
    $ open doc/api/index.html

----

## Installation [0501_1000/001015_grocer_grocer.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/001015_grocer_grocer.md)

Add this line to your application's Gemfile:

```ruby
gem 'grocer'
```

If you are using JRuby, you will also need to add this to enable full OpenSSL support:

```ruby
gem 'jruby-openssl'
```

----

## Installation [0501_1000/001014_dergachev_screengif.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/001014_dergachev_screengif.md)

----

## Installation [0501_1000/001011_stripe_stripe-ruby.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/001011_stripe_stripe-ruby.md)

You don't need this source code unless you want to modify the gem. If you just
want to use the package, just run:

    gem install stripe

If you want to build the gem from source:

    gem build stripe.gemspec

----

## Installation [0501_1000/001000_jasonlong_geo_pattern.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/001000_jasonlong_geo_pattern.md)

**Note:** as of version `1.4.0`, Ruby version 2 or greater is required.

Add this line to your application's Gemfile:

    gem 'geo_pattern'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geo_pattern

----

## Installation and Usage [0501_1000/000997_doabit_semantic-ui-sass.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000997_doabit_semantic-ui-sass.md)

```ruby
gem 'semantic-ui-sass'
```

`bundle install` and restart your server to make the files available through the pipeline.

# semantic-ui-sass with Rails or Sprockets

----

## Installation [0501_1000/000995_cogitatio_vagrant-hostsupdater.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000995_cogitatio_vagrant-hostsupdater.md)

    $ vagrant plugin install vagrant-hostsupdater

Uninstall it with:

    $ vagrant plugin uninstall vagrant-hostsupdater

Update the plugin with:

    $ vagrant plugin update vagrant-hostsupdater

----

## Installation [0501_1000/000982_travis-ci_travis.rb.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000982_travis-ci_travis.rb.md)

Make sure you have at least [Ruby](http://www.ruby-lang.org/en/downloads/) 1.9.3 (2.0.0 recommended) installed.

You can check your Ruby version by running `ruby -v`:

    $ ruby -v
    ruby 2.0.0p195 (2013-05-14 revision 40734) [x86_64-darwin12.3.0]

Then run:

    $ gem install travis -v 1.8.9 --no-rdoc --no-ri

Now make sure everything is working:

    $ travis version
    1.8.9

See also [Note on Ubuntu](#ubuntu) below.

----

## Installation [0501_1000/000980_KrauseFx_xcode-install.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000980_KrauseFx_xcode-install.md)

```
$ gem install xcode-install
```

Note: unfortunately, XcodeInstall has a transitive dependency on a gem with native extensions and this is not really fixable at this point in time. If you are installing this on a machine without a working compiler, please use these alternative instructions instead:

```
$ curl -sL -O https://github.com/neonichu/ruby-domain_name/releases/download/v0.5.99999999/domain_name-0.5.99999999.gem
$ gem install domain_name-0.5.99999999.gem
$ gem install --conservative xcode-install
$ rm -f domain_name-0.5.99999999.gem
```

----

## Installation [0501_1000/000979_brooklynDev_airborne.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000979_brooklynDev_airborne.md)

Install Airborne:
```shell
$ gem install airborne
```
Or add it to your Gemfile:
```ruby
gem 'airborne'
```
----

## Installation [0501_1000/000978_topfunky_gruff.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000978_topfunky_gruff.md)

Add this line to your application's Gemfile:

    gem 'gruff'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gruff

----

## Installation [0501_1000/000970_gocardless_statesman.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000970_gocardless_statesman.md)

To get started, just add Statesman to your `Gemfile`, and then run `bundle`:

```ruby
gem 'statesman', '~> 3.4.1'
```

----

## Installation [0501_1000/000950_basecamp_marginalia.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000950_basecamp_marginalia.md)

----

## Installation [0501_1000/000949_orta_cocoapods-keys.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000949_orta_cocoapods-keys.md)

    $ gem install cocoapods-keys

----

## Installation [0501_1000/000949_jeremyw_stamp.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000949_jeremyw_stamp.md)

Just `gem install stamp`, or add stamp to your Gemfile and `bundle install`.

----

## Installation [0501_1000/000942_zquestz_omniauth-google-oauth2.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000942_zquestz_omniauth-google-oauth2.md)

Add to your `Gemfile`:

```ruby
gem 'omniauth-google-oauth2'
```

Then `bundle install`.

----

## Installation [0501_1000/000941_michenriksen_aquatone.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000941_michenriksen_aquatone.md)

1. Install [Google Chrome](https://www.google.com/chrome/) or [Chromium](https://www.chromium.org/getting-involved/download-chromium) browser -- **Note:** Google Chrome is currently giving unreliable results when running in *headless* mode, so it is recommended to install Chromium for the best results.
2. Download the [latest release](https://github.com/michenriksen/aquatone/releases/latest) of Aquatone for your operating system.
3. Uncompress the zip file and move the `aquatone` binary to your desired location. You probably want to move it to a location in your `$PATH` for easier use.

----

## Installation [0501_1000/000937_buo_homebrew-cask-upgrade.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000937_buo_homebrew-cask-upgrade.md)

```
brew tap buo/cask-upgrade
```

----

## Installation [0501_1000/000936_piotrmurach_github.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000936_piotrmurach_github.md)

Install the gem by running

```ruby
gem install github_api
```

or put it in your Gemfile and run `bundle install`

```ruby
gem "github_api"
```

----

## Installation [0501_1000/000922_maciejczyzewski_hyhyhy.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000922_maciejczyzewski_hyhyhy.md)

Binary installers for the latest released version are available at the [RubyGems.](https://rubygems.org/gems/hyhyhy)

```bash
$ gem install hyhyhy
```

You can create a new project by generating structure like this. Make sure that the destination folder does not exist because it will be overwritten.

```bash
my-new-presentation
├── _assets                # Assets, own catalogs
│   ├── javascripts        # Scripts
│   │   └── main.js        # Core (presentation)
│   └── stylesheets        # Styles
│       └── main.css       # Default
├── _includes              # Bower components
│   └── bower.json         # Package list
├── _layouts               # Layouts
│   └── default.erb        # Basic template
├── _slides                # Slides/Sections
│   ├── 1.introduction.md  # First group
│   ├── 2.packages.md      # Second group
│   ├── ...                # ...
│   └── n.html             # Last gruop
├── .bowerrc               # Bower configure
├── .hyhyhy                # Hyhyhy configure
└── README.md              # Simplified guide
```

----

## Installation [0501_1000/000916_mailman_mailman.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000916_mailman_mailman.md)

    gem install mailman

----

## Installation [0501_1000/000915_cucumber_cucumber-rails.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000915_cucumber_cucumber-rails.md)

Before you can use the generator, add the gem to your project's Gemfile as follows:

    group :test do
      gem 'cucumber-rails', require: false
      # database_cleaner is not required, but highly recommended
      gem 'database_cleaner'
    end

Then install it by running:

    bundle install

Learn about the various options:

    rails generate cucumber:install --help

Finally, bootstrap your Rails app, for example:

    rails generate cucumber:install

----

## Installation [0501_1000/000913_SlatherOrg_slather.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000913_SlatherOrg_slather.md)

Add this line to your application's Gemfile:

```ruby
gem 'slather'
```

And then execute:

```sh
$ bundle
```

Or install the gem:

```sh
gem install slather
```

----

## Installation [0501_1000/000905_gma_nesta.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000905_gma_nesta.md)

Begin by installing the gem:

    $ gem install nesta

Then use the `nesta` command to generate a new site:

    $ nesta new mysite.com --git

Install a few dependencies, and you're away:

    $ cd mysite.com
    $ bundle

You'll find basic configuration options for your site in
`config/config.yml`. The defaults will work, but you'll want to tweak it
before you go very far.

That's it - you can launch a local web server in development mode using
mr-sparkle...

    $ bundle exec mr-sparkle config.ru

...then point your web browser at http://localhost:8080. Start editing
the files in `content/pages` (see the [docs on writing content][] for
full instructions).

[docs on writing content]: http://nestacms.com/docs/creating-content

----

## Installation [0501_1000/000905_yujinakayama_transpec.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000905_yujinakayama_transpec.md)

Simply install `transpec` with `gem` command:

```bash
$ gem install transpec
```

Normally you don't need to add `transpec` to your `Gemfile` or `*.gemspec` since this isn't a tool to be used daily.

----

## Installation [0501_1000/000902_whitequark_parser.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000902_whitequark_parser.md)

    $ gem install parser

----

## Installation [0501_1000/000899_magnusvk_counter_culture.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000899_magnusvk_counter_culture.md)

Add counter_culture to your Gemfile:

```ruby
gem 'counter_culture', '~> 2.0'
```

Then run `bundle install`

----

## Installation & Bundler Dependency [0501_1000/000898_ruby-amqp_bunny.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000898_ruby-amqp_bunny.md)

----

## Installation [0501_1000/000898_yamldb_yaml_db.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000898_yamldb_yaml_db.md)

Simply add to your Gemfile:

    gem 'yaml_db'

All rake tasks will then be available to you.

----

## Installation [0501_1000/000897_reworkcss_css.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000897_reworkcss_css.md)

    $ npm install css

----

## Installation [0501_1000/000890_bploetz_versionist.markdown](https://github.com/ts-3156/readmes/blob/master/0501_1000/000890_bploetz_versionist.markdown)

Add the following dependency to your Rails application's `Gemfile` file and run `bundle install`:

    gem 'versionist'


----

## Installation [0501_1000/000883_amro_gibbon.markdown](https://github.com/ts-3156/readmes/blob/master/0501_1000/000883_amro_gibbon.markdown)

    $ gem install gibbon

----

## Installation [0501_1000/000883_gjtorikian_html-proofer.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000883_gjtorikian_html-proofer.md)

Add this line to your application's Gemfile:

    gem 'html-proofer'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install html-proofer

**NOTE:** When installation speed matters, set `NOKOGIRI_USE_SYSTEM_LIBRARIES` to `true` in your environment. This is useful for increasing the speed of your Continuous Integration builds.

----

## Installation [0501_1000/000881_thredded_thredded.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000881_thredded_thredded.md)

----

## Installation [0501_1000/000879_SamSaffron_memory_profiler.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000879_SamSaffron_memory_profiler.md)

Add this line to your application's Gemfile:

    gem 'memory_profiler'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install memory_profiler

----

## Installation [0501_1000/000872_ankane_strong_migrations.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000872_ankane_strong_migrations.md)

Add this line to your application’s Gemfile:

```ruby
gem 'strong_migrations'
```

----

## Installation [0501_1000/000871_DamirSvrtan_fasterer.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000871_DamirSvrtan_fasterer.md)

```shell
gem install fasterer
```

----

## Installation [0501_1000/000867_FGRibreau_mailchecker.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000867_FGRibreau_mailchecker.md)

NodeJS/JavaScript
```bash
npm install mailchecker
```

Ruby
```bash
gem install ruby-mailchecker
```

PHP
```bash
composer require fgribreau/mailchecker
```

__We accept pull-requests for other package manager__.

----

## Installation [0501_1000/000857_chrishunt_git-pissed.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000857_chrishunt_git-pissed.md)

```bash
$ gem install git_pissed
```

----

## Installation [0501_1000/000849_itamae-kitchen_itamae.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000849_itamae-kitchen_itamae.md)

```
$ gem install itamae
```

----

## Installation [0501_1000/000848_CocoaPods_cocoapods-deintegrate.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000848_CocoaPods_cocoapods-deintegrate.md)

```bash
$ [sudo] gem install cocoapods-deintegrate
```

----

## Installation [0501_1000/000846_lassebunk_gretel.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000846_lassebunk_gretel.md)

In your *Gemfile*:

```ruby
gem "gretel"
```

And run:

```bash
$ bundle install
```

----

## Installation <a name="install"></a> [0501_1000/000845_ruby-grape_grape-swagger.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000845_ruby-grape_grape-swagger.md)

Add to your Gemfile:

```ruby
gem 'grape-swagger'
```

----

## Installation [0501_1000/000841_radar_by_star.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000841_radar_by_star.md)

Install this gem by adding this to your Gemfile:

```ruby
gem 'by_star', git: "git://github.com/radar/by_star"
```

Then run `bundle install`

If you are using ActiveRecord, you're done!

Mongoid users, please include the Mongoid::ByStar module for each model you wish to use the functionality.
This is the convention among Mongoid plugins.

```ruby
class MyModel
  include Mongoid::Document
  include Mongoid::ByStar
```

----

## Installation [0501_1000/000837_leonid-shevtsov_headless.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000837_leonid-shevtsov_headless.md)

On Debian/Ubuntu:

```sh
sudo apt-get install xvfb
gem install headless
```

----

## Installation [0501_1000/000836_jalkoby_squasher.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000836_jalkoby_squasher.md)

You don't have to add it into your Gemfile. Just a standalone installation:

    $ gem install squasher

**@note** if you use Rbenv don't forget to run `rbenv rehash`.

If you want to share it with your rails/sinatra/etc app add the below:

```ruby
# Yep, the missing group in most Gemfiles where all utilities should be!
group :tools do
  gem 'squasher', '>= 0.6.0'
  gem 'capistrano'
  gem 'rubocop'
end
```

Don't forget to run `bundle`.

To integrate `squasher` with your app even more do the below:

    $ bundle binstub squasher
    $ # and you have a runner inside the `bin` folder
    $ bin/squasher

----

## Installation [0501_1000/000829_be9_acl9.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000829_be9_acl9.md)

Acl9 is [Semantically Versioned](http://semver.org/), so just add this to your
`Gemfile`:

```ruby
gem 'acl9', '~> 3.0'
```

You will need Ruby 2.x

----

## Installation [0501_1000/000823_heygrady_scss-blend-modes.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000823_heygrady_scss-blend-modes.md)
----

## Installation [0501_1000/000822_weppos_whois.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000822_weppos_whois.md)

You can install the gem manually:

```shell
gem install whois
```

Or use [Bundler](http://bundler.io/) and define it as a dependency in your `Gemfile`:

```ruby
gem 'whois'
```

To use the WHOIS parser component you need to install the `whois-parser` gem:

```shell
gem install whois-parser
```

```ruby
gem 'whois-parser'
```

The `whois-parser` gem already depends on the `whois` gem. If you install `whois-parser`, `whois` will be installed as well and it will also be automatically required when you `require 'whois-parser'`.

If you are upgrading to 4.0, see [4.0-Upgrade.md](4.0-Upgrade.md).


----

## Installation [0501_1000/000814_rails-sqlserver_activerecord-sqlserver-adapter.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000814_rails-sqlserver_activerecord-sqlserver-adapter.md)

The adapter has no strict gem dependencies outside of ActiveRecord. You will have to pick a connection mode, the default is dblib which uses the TinyTDS gem. Just bundle the gem and the adapter will use it.

```ruby
gem 'tiny_tds'
gem 'activerecord-sqlserver-adapter'
```


----

## Installation ## [0501_1000/000811_airbnb_nerve.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000811_airbnb_nerve.md)

To download and run the nerve binary, first install a version of ruby. Then,
install nerve with:

```bash
$ mkdir -p /opt/smartstack/nerve

# If you want to install specific versions of dependencies such as an older
# version of the aws-sdk, the docker-api, etc, gem install that here *before*
# gem installing nerve. This is also where you would gem install
# custom reporters.

# If you are on Ruby 2.X use --no-document instead of --no-ri --no-rdoc
$ gem install nerve --install-dir /opt/smartstack/nerve --no-ri --no-rdoc
```

This will download nerve and its dependencies into /opt/smartstack/nerve. You
might wish to omit the `--install-dir` flag to use your system's default gem
path, however this will require you to run `gem install nerve` with root
permissions. You can also install via bundler, but keep in mind you'll pick up
Nerve's version of library dependencies and possibly not the ones you need
for your infra/apps.

----

## Installation [0501_1000/000808_faye_faye-websocket-ruby.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000808_faye_faye-websocket-ruby.md)

```
$ gem install faye-websocket
```


----

## Installation [0501_1000/000784_dwilkie_carrierwave_direct.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000784_dwilkie_carrierwave_direct.md)

Install the latest release:

    gem install carrierwave_direct

In Rails, add it to your Gemfile:

```ruby
gem 'carrierwave_direct'
```

Note that CarrierWaveDirect is not compatible with Rails 2.

----

## Installation [0501_1000/000781_jaimeiniesta_metainspector.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000781_jaimeiniesta_metainspector.md)

Install the gem from RubyGems:

```bash
gem install metainspector
```

If you're using it on a Rails application, just add it to your Gemfile and run `bundle install`

```ruby
gem 'metainspector'
```

----

## Installation [0501_1000/000780_jgorset_facebook-messenger.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000780_jgorset_facebook-messenger.md)

    $ gem install facebook-messenger

----

## Installation [0501_1000/000778_rails_jquery-rails.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000778_rails_jquery-rails.md)

The jquery and jquery-ujs files will be added to the asset pipeline and available for you to use. If they're not already in `app/assets/javascripts/application.js` by default, add these lines:

```js
//= require jquery
//= require jquery_ujs
```

If you are running Rails 5.1 and up, and if you have included `//= require rails-ujs`, then `jquery_ujs` is not needed anymore. You can just add:

```js
//= require jquery
```

If you want to use jQuery 2, you can require `jquery2` instead:

```js
//= require jquery2
//= require jquery_ujs
```

And if you want to use jQuery 3, you can require `jquery3`:

```js
//= require jquery3
//= require jquery_ujs
```

For jQuery UI, we recommend the [jquery-ui-rails](https://github.com/joliss/jquery-ui-rails) gem, as it includes the jquery-ui css and allows easier customization.

*As of v3.0, jquery-rails no longer includes jQuery UI. Use the
jquery-ui-rails gem above.*

----

## Installation [0501_1000/000773_pivotal_LicenseFinder.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000773_pivotal_LicenseFinder.md)

License Finder requires Ruby 2.3.3 or greater to run. If you have an older
version of Ruby installed, you can update via Homebrew:

```sh
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

then:

```sh
$ brew install ruby
```

The easiest way to use `license_finder` is to install it as a command
line tool, like brew, awk, gem or bundler:

```sh
$ gem install license_finder
```

Though it's less preferable, if you are using bundler in a Ruby
project, you can add `license_finder` to your Gemfile:

```ruby
gem 'license_finder', :group => :development
```

This approach helps you remember to install `license_finder`, but can
pull in unwanted dependencies, including `bundler`. To mitigate this
problem, see [Excluding Dependencies](#excluding-dependencies).


----

## Installation [0501_1000/000766_Shopify_active_shipping.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000766_Shopify_active_shipping.md)

Using bundler, add to the `Gemfile`:

```ruby
gem 'active_shipping'
```

Or stand alone:

```
$ gem install active_shipping
```


----

## Installation [0501_1000/000765_jekyll_minima.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000765_jekyll_minima.md)

Add this line to your Jekyll site's Gemfile:

```ruby
gem "minima"
```

And add this line to your Jekyll site:

```yaml
theme: minima
```

And then execute:

    $ bundle


----

## Installation [0501_1000/000762_mdp_rotp.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000762_mdp_rotp.md)

```bash
gem install rotp
```

----

## Installation [0501_1000/000753_plataformatec_mail_form.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000753_plataformatec_mail_form.md)

Install **MailForm** is very easy. Just edit your Gemfile adding the following:

```ruby
gem 'mail_form'
```
Then run `bundle install` to install **MailForm**.

If you want it as plugin, just do:

`script/plugin install git://github.com/plataformatec/mail_form.git`

----

## Installation via Gemfile / Bundler [0501_1000/000750_alexch_rerun.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000750_alexch_rerun.md)

If you are using rerun inside an existing Ruby application (like a Rails or Sinatra app), you can add it to your Gemfile:

``` ruby
group :development, :test do
  gem "rerun"
end
```

Using a Gemfile is also an easy way to use the pre-release branch, which may have bugfixes or features you want:

``` ruby
group :development, :test do
  gem "rerun", git: "https://github.com/alexch/rerun.git"
end
```

When using a Gemfile, install with `bundle install` or `bundle update`, and run using `bundle exec rerun`, to guarantee you are using the rerun version specified in the Gemfile, and not a different version in a system-wide gemset.

# Usage:

        rerun [options] [--] cmd

For example, if you're running a Sinatra app whose main file is `app.rb`:

        rerun ruby app.rb

If the first part of the command is a `.rb` filename, then `ruby` is
optional, so the above can also be accomplished like this:

        rerun app.rb

Rails doesn't automatically notice all config file changes, so you can force it
to restart when you change a config file like this:

        rerun --dir config rails s

Or if you're using Thin to run a Rack app that's configured in config.ru
but you want it on port 4000 and in debug mode, and only want to watch
the `app` and `web` subdirectories:

        rerun --dir app,web -- thin start --debug --port=4000 -R config.ru

The `--` is to separate rerun options from cmd options. You can also
use a quoted string for the command, e.g.

        rerun --dir app "thin start --debug --port=4000 -R config.ru"

Rackup can also be used to launch a Rack server, so let's try that:

        rerun -- rackup --port 4000 config.ru

Want to mimic [autotest](https://github.com/grosser/autotest)? Try

        rerun -x rake

or

        rerun -cx rspec

And if you're using [Spork](https://github.com/sporkrb/spork) with Rails, you
need to [restart your spork server](https://github.com/sporkrb/spork/issues/201)
whenever certain Rails environment files change, so why not put this in your
Rakefile...

    desc "run spork (via rerun)"
    task :spork do
      sh "rerun --pattern '{Gemfile,Gemfile.lock,spec/spec_helper.rb,.rspec,spec/factories/**,config/environment.rb,config/environments/test.rb,config/initializers/*.rb,lib/**/*.rb}' -- spork"
    end

and start using `rake spork` to launch your spork server?

(If you're using Guard instead of Rerun, check out
[guard-spork](https://github.com/guard/guard-spork)
for a similar solution.)

How about regenerating your HTML files after every change to your
[Erector](http://erector.rubyforge.org) widgets?

        rerun -x erector --to-html my_site.rb

Use Heroku Cedar? `rerun` is now compatible with `foreman`. Run all your
Procfile processes locally and restart them all when necessary.

        rerun foreman start

# Options:

These options can be specified on the command line and/or inside a `.rerun` config file (see below).

`--dir` directory (or directories) to watch (default = "."). Separate multiple paths with ',' and/or use multiple `-d` options.

`--pattern` glob to match inside directory. This uses the Ruby Dir glob style -- see <http://www.ruby-doc.org/core/classes/Dir.html#M002322> for details.
By default it watches files ending in: `rb,js,coffee,css,scss,sass,erb,html,haml,ru,yml,slim,md,feature,c,h`.
On top of this, it also ignores dotfiles, `.tmp` files, and some other files and directories (like `.git` and `log`).
Run `rerun --help` to see the actual list.

`--ignore pattern` file glob to ignore (can be set many times). To ignore a directory, you must append `'/*'` e.g.
  `--ignore 'coverage/*'`.

`--[no-]ignore-dotfiles` By default, on top of --pattern and --ignore, we ignore any changes to files and dirs starting with a dot. Setting `--no-ignore-dotfiles` allows you to monitor a relevant file like .env, but you may also have to explicitly --ignore more dotfiles and dotdirs. 

`--signal` (or `-s`) use specified signal(s) (instead of the default `TERM,INT,KILL`) to terminate the previous process. You can use a comma-delimited list if you want to try a signal, wait up to 5 seconds for the process to die, then try again with a different signal, and so on. 
This may be useful for forcing the respective process to terminate as quickly as possible.
(`--signal KILL` is the equivalent of `kill -9`)

`--wait sec` (or `-w`)           after asking the process to terminate, wait this long (in seconds) before either aborting, or trying the next signal in series. Default: 2 sec

`--restart` (or `-r`) expect process to restart itself, using signal HUP by default
(e.g. `-r -s INT` will send a INT and then resume watching for changes)

`--exit` (or -x) expect the program to exit. With this option, rerun checks the return value; without it, rerun checks that the launched process is still running.

`--clear` (or -c) clear the screen before each run

`--background` (or -b) disable on-the-fly commands, allowing the process to be backgrounded

`--notify NOTIFIER` use `growl` or `osx` or `notify-send` for notifications (see below)

`--no-notify` disable notifications

`--name` set the app name (for display)

`--force-polling` use polling instead of a native filesystem scan (useful for Vagrant)

`--quiet` silences most messages

`--verbose` enables even more messages (unless you also specified `--quiet`, which overrides `--verbose`)

Also `--version` and `--help`, naturally.

----

## Installation [0501_1000/000748_Parallels_vagrant-parallels.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000748_Parallels_vagrant-parallels.md)
Make sure that you have [Parallels Desktop for Mac](http://www.parallels.com/products/desktop/)
and [Vagrant](http://www.vagrantup.com/downloads) properly installed.
We recommend that you use the latest versions of these products.

Parallels provider is a plugin for Vagrant. Run this command to install it:

```
$ vagrant plugin install vagrant-parallels
```

----

## Installation [0501_1000/000739_tmm1_rblineprof.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000739_tmm1_rblineprof.md)

`gem install rblineprof`

Or in your Gemfile:

`gem 'rblineprof'`

----

## Installation [0501_1000/000735_maxtaco_coffee-script.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000735_maxtaco_coffee-script.md)

If you have the node package manager, npm, installed:

```shell
npm install -g iced-coffee-script
```

Leave off the `-g` if you don't wish to install globally. If you don't wish to use npm:

```shell
git clone https://github.com/maxtaco/coffee-script.git
sudo coffee-script/bin/cake install
```

----

## Installation [0501_1000/000733_hexgnu_linkedin.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000733_hexgnu_linkedin.md)

    gem install linkedin

----

## Installation [0501_1000/000731_dejan_auto_html.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000731_dejan_auto_html.md)

Add this line to your application's Gemfile:

```ruby
gem 'auto_html'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install auto_html
```

----

## Installation [0501_1000/000725_FineLinePrototyping_angularjs-rails-resource.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000725_FineLinePrototyping_angularjs-rails-resource.md)
----

## Installation [0501_1000/000723_piotrmurach_tty-prompt.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000723_piotrmurach_tty-prompt.md)

Add this line to your application's Gemfile:

```ruby
gem 'tty-prompt'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tty-prompt

----

## Installation [0501_1000/000721_CultivateLabs_storytime.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000721_CultivateLabs_storytime.md)

Add Storytime to your Gemfile:

```ruby
gem "storytime"
```

Run the bundle command to install it.

After you install Storytime and add it to your Gemfile, you can either setup Storytime through a [guided command line interface](#guided-setup), a speedy [automated setup](#automated-setup), or [manually](#manual-setup).

**Note:** To use the image upload feature, Storytime requires you to have Imagemagick installed on your system.

----

## Installation [0501_1000/000719_crypto-rb_rbnacl.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000719_crypto-rb_rbnacl.md)

Note: [Windows installation instructions are available](https://github.com/crypto-rb/rbnacl/wiki/Installing-libsodium#windows).

----

## Installation [0501_1000/000710_redis-store_redis-rails.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000710_redis-store_redis-rails.md)

Add the following to your Gemfile:

```ruby
gem 'redis-rails'
```

----

## Installation [0501_1000/000709_weppos_breadcrumbs_on_rails.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000709_weppos_breadcrumbs_on_rails.md)

Add this line to your application's `Gemfile`:

    gem "breadcrumbs_on_rails"

And then execute `bundle` to install the dependencies:

    $ bundle

Use [Bundler](http://bundler.io/) and the `:git` option if you want to grab the latest version from the Git repository.


----

## Installation: [0501_1000/000709_travis-ci_dpl.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000709_travis-ci_dpl.md)

Dpl is published to rubygems.

* Dpl requires ruby 2.2 and later.
* To install: `gem install dpl`

----

## Installation [0501_1000/000707_dmayer_idb.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000707_dmayer_idb.md)

See [installation instructions](http://www.idbtool.com/installation/) on idbtool.com.


----

## Installation [0501_1000/000706_heckpsi-lab_em-midori.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000706_heckpsi-lab_em-midori.md)

```bash
gem install midori.rb
```

**With Bundler**

```ruby
gem 'midori.rb'
```

```bash
bundle install
```

----

## Installation [0501_1000/000703_rodjek_puppet-lint.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000703_rodjek_puppet-lint.md)

Install the Puppet Lint gem by running:

```
gem install puppet-lint
```

----

## Installation [0501_1000/000702_puppetlabs_showoff.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000702_puppetlabs_showoff.md)

Showoff is distributed as a RubyGem. Simply install it like any other gem. Showoff
will run out of the box on OS X and most Linux distributions. To install on Windows,
you'll need to install both Ruby and the Ruby DevKit for compiling native extensions.

    gem install showoff


----

## Installation [0501_1000/000699_k0kubun_md2key.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000699_k0kubun_md2key.md)

```bash
gem install md2key
```

----

## Installation [0501_1000/000697_rubychan_coderay.markdown](https://github.com/ts-3156/readmes/blob/master/0501_1000/000697_rubychan_coderay.markdown)

`gem install coderay`

----

## Installation [0501_1000/000689_chrisfsampaio_imsg.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000689_chrisfsampaio_imsg.md)

It is easy as:

```bash
$ gem install imsg
```

----

## Installation [0501_1000/000685_chaps-io_gush.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000685_chaps-io_gush.md)

----

## Installation [0501_1000/000685_utgarda_sidekiq-status.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000685_utgarda_sidekiq-status.md)

Add this line to your application's Gemfile:

```ruby
gem 'sidekiq-status'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
gem install sidekiq-status
```

----

## Installation [0501_1000/000680_SchemaPlus_schema_plus.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000680_SchemaPlus_schema_plus.md)

Install from http://rubygems.org via

    $ gem install "schema_plus"

or in a Gemfile

    gem "schema_plus"

----

## Installation and Usage [0501_1000/000677_lardawge_carrierwave_backgrounder.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000677_lardawge_carrierwave_backgrounder.md)

These instructions assume you have previously set up [CarrierWave](https://github.com/jnicklas/carrierwave) and your queuing lib of choice.

In Rails, add the following your Gemfile:

```ruby
gem 'carrierwave_backgrounder'
```

Run the generator which will create an initializer in config/initializers.
```bash
  rails g carrierwave_backgrounder:install
```

You can pass additional configuration options to Girl Friday and Sidekiq:

```ruby
CarrierWave::Backgrounder.configure do |c|
  c.backend :girl_friday, queue: :awesome_queue, size: 3, store: GirlFriday::Store::Redis
end
```

In your CarrierWave uploader file:

```ruby
class AvatarUploader < CarrierWave::Uploader::Base
  include ::CarrierWave::Backgrounder::Delay

  #etc...
end
```

----

## Installation [0501_1000/000676_andymeneely_squib.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000676_andymeneely_squib.md)

Squib requires Ruby 2.2 or later.

Install it yourself with:

    $ gem install squib

If you're using Bundler, add this line to your application's Gemfile:

    gem 'squib'

And then execute:

    $ bundle

More info: http://squib.readthedocs.org/en/latest/install.html


----

## Installation [0501_1000/000671_FortAwesome_font-awesome-sass.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000671_FortAwesome_font-awesome-sass.md)

Please see the appropriate guide for your environment of choice:

* [Ruby on Rails](#a-ruby-on-rails).
* [Compass](#b-compass-without-rails) not on Rails.

----

## Installation [0501_1000/000665_apotonick_apotomo.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000665_apotonick_apotomo.md)

Easy as hell. You just need Ruby 1.9.3/2.0.0 and Rails 3/4.

Add Apotomo to your `Gemfile`:

```ruby
gem 'apotomo'
```

----

## Installation & Upgrading [0501_1000/000662_thoughtbot_flutie.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000662_thoughtbot_flutie.md)

Flutie is a Railtie. We support the versions of Ruby and Rails listed in
[.travis.yml](.travis.yml).

It should be run as a gem and included in your `Gemfile`:

```ruby
gem "flutie"
```

----

## Installation [0501_1000/000660_salsify_goldiloader.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000660_salsify_goldiloader.md)

Add this line to your application's Gemfile:

    gem 'goldiloader'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install goldiloader

----

## Installation [0501_1000/000659_tomgi_git_stats.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000659_tomgi_git_stats.md)

----

## Installation [0501_1000/000658_ConradIrwin_pry-rescue.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000658_ConradIrwin_pry-rescue.md)

You can install `pry-rescue` with RubyGems as normal, and I strongly recommend you also
install `pry-stack_explorer`. See [Known bugs](#known-bugs) for places that won't work.

```
gem install pry-rescue pry-stack_explorer
```

If you're using Bundler, you can add it to your Gemfile in the development group:

```ruby
group :development do
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
end
```

----

## Installation [0501_1000/000657_flavorjones_loofah.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000657_flavorjones_loofah.md)

Unsurprisingly:

* gem install loofah


----

## Installation [0501_1000/000655_chloerei_alipay.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000655_chloerei_alipay.md)

To install using [Bundler](http://bundler.io/). Add this line to your
application's Gemfile:

```ruby
gem 'alipay', '~> 0.15.1'
```

Then run:
```bash
$ bundle
```

Or you can manually install using [RubyGems](http://rubygems.org/):
```bash
$ gem install alipay -v 0.15.1
```

----

## Installation [0501_1000/000654_shadabahmed_logstasher.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000654_shadabahmed_logstasher.md)

In your Gemfile:
```ruby
gem 'logstasher'
```

----

## Installation [0501_1000/000654_chaps-io_access-granted.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000654_chaps-io_access-granted.md)

Add the gem to your gemfile:

```ruby
gem 'access-granted', '~> 1.1.0'
```
Run the bundle command to install it. Then run the generator:

    rails generate access_granted:policy

Add the `policies` (and `roles` if you're using it to split up your roles into files) directories to your autoload paths in `application.rb`:
    
```ruby
config.autoload_paths += %W(#{config.root}/app/policies #{config.root}/app/roles)
```

----

## Installation [0501_1000/000652_zilkey_active_hash.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000652_zilkey_active_hash.md)

Bundler:
```ruby
gem 'active_hash'
```
Other:
```ruby
gem install active_hash
```

**Currently version 2.x doesn't support Ruby < 2.4 and Rails < 5**. If you use these versions, please use 1.x.

```ruby
gem 'active_hash', '~> 1.5.3'
```

----

## Installation [0501_1000/000651_ledermann_rails-settings.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000651_ledermann_rails-settings.md)

Include the gem in your Gemfile and run `bundle` to install it:

```ruby
gem 'ledermann-rails-settings'
```

Generate and run the migration:

```shell
rails g rails_settings:migration
rake db:migrate
```


----

## Installation [0501_1000/000649_mkhairi_materialize-sass.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000649_mkhairi_materialize-sass.md)

In your Gemfile you need to add the `materialize-sass` gem:

```ruby
gem 'materialize-sass', '~> 1.0.0'
```


And then run the bundler and restart your server to make the files available through the pipeline:

```console
$ bundle install
```

Or install it separately:

```console
$ gem install materialize-sass
```

----

## Installation [0501_1000/000646_clayallsopp_formotion.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000646_clayallsopp_formotion.md)

`gem install formotion`

In your `Rakefile`:

`require 'formotion'`

----

## Installation [0501_1000/000640_ko1_pretty_backtrace.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000640_ko1_pretty_backtrace.md)

Add this line to your application's Gemfile:

```ruby
gem 'pretty_backtrace'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pretty_backtrace

----

## Installation [0501_1000/000639_ngauthier_tubesock.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000639_ngauthier_tubesock.md)

Add this line to your application's Gemfile:

```ruby
gem 'tubesock'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tubesock

----

## Installation [0501_1000/000637_ianks_octodown.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000637_ianks_octodown.md)

*Requirements*: Ruby >= 2.0

1. Install `icu4c` and `cmake`:
  - Mac: `brew install icu4c cmake pkg-config`
  - Apt: `sudo apt-get install -y libicu-dev cmake pkg-config ruby-dev`

1. Install octodown:
  - If you have a non-system Ruby (_highly recommended_):  `gem install
    octodown`
  - Else: `sudo gem install octodown`

----

## Installation [0501_1000/000634_DavyJonesLocker_postgres_ext.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000634_DavyJonesLocker_postgres_ext.md)

Add this line to your application's Gemfile:

    gem 'postgres_ext'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install postgres_ext

----

## Installation [0501_1000/000634_cmer_socialization.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000634_cmer_socialization.md)

----

## Installation [0501_1000/000629_lyptt_struct.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000629_lyptt_struct.md)

`struct` requires a minimum of Ruby 2.2.0, which is available in macOS High Sierra.
You can install a higher version of Ruby with [RVM](https://rvm.io/) on an older macOS version.

Install `struct` from Rubygems:

_You may need to use sudo when using the system-provided Ruby_

    $ gem install struct

----

## Installation [0501_1000/000628_iain_http_accept_language.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000628_iain_http_accept_language.md)

----

## Installation [0501_1000/000625_capistrano_rails.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000625_capistrano_rails.md)

Add these Capistrano gems to your application's Gemfile using `require: false`:

```ruby
group :development do
  gem "capistrano", "~> 3.10", require: false
  gem "capistrano-rails", "~> 1.4", require: false
end
```

Run the following command to install the gems:

```
bundle install
```

Then run the generator to create a basic set of configuration files:

```
bundle exec cap install
```

----

## Installation [0501_1000/000620_elcuervo_minuteman.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000620_elcuervo_minuteman.md)

```bash
gem install minuteman
```

----

## Installation ## [0501_1000/000620_kern_minitest-reporters.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000620_kern_minitest-reporters.md)

    gem install minitest-reporters

----

## Installation [0501_1000/000618_FooBarWidget_default_value_for.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000618_FooBarWidget_default_value_for.md)

----

## Installation [0501_1000/000618_Compass_compass-rails.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000618_Compass_compass-rails.md)

Add the `compass-rails` gem line to your application's Gemfile

```ruby
gem 'sass-rails'
gem 'compass-rails'
```

If you are using any Compass extensions, add them to this group in your
Gemfile.

And then execute:

    $ bundle

----

## Installation [0501_1000/000616_Shopify_ejson.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000616_Shopify_ejson.md)

You can download the `.deb` package from [Github Releases](https://github.com/Shopify/ejson/releases).

On development machines (64-bit linux or OS X), the recommended installation
method is via rubygems:

```
gem install ejson
```

----

## Installation [0501_1000/000614_zapnap_resque_mailer.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000614_zapnap_resque_mailer.md)

Install the gem:

    gem install resque_mailer

If you're using Bundler to manage your dependencies, you should add it to your Gemfile:

    gem 'resque' # or a compatible alternative / fork
    gem 'resque_mailer'

----

## Installation [0501_1000/000614_k1LoW_awspec.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000614_k1LoW_awspec.md)

Add this line to your application's Gemfile:

```ruby
gem 'awspec'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install awspec

----

## Installation [0501_1000/000614_trailblazer_representable.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000614_trailblazer_representable.md)

The representable gem runs with all Ruby versions >= 1.9.3.

```ruby
gem 'representable'
```

----

## Installation [0501_1000/000611_jeremytregunna_ruby-trello.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000611_jeremytregunna_ruby-trello.md)

```
# gem install ruby-trello
```

Full Disclosure: This library is mostly complete, if you do find anything missing or not functioning as you expect it
to, please [let us know](https://trello.com/card/spot-a-bug-report-it/4f092b2ee23cb6fe6d1aaabd/17).

Supports Ruby 2.1.0 or newer.

Use version 1.3.0 or earlier for Ruby 1.9.3 support.
Use version 1.4.x or earlier for Ruby 2.0.0 support.

----

## Installation [0501_1000/000609_peterhellberg_hashids.rb.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000609_peterhellberg_hashids.rb.md)

Add this line to your application's Gemfile:

    gem 'hashids'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hashids

----

## Installation [0501_1000/000608_maxdemarzi_neography.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000608_maxdemarzi_neography.md)

----

## Installation [0501_1000/000600_flood-io_ruby-jmeter.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000600_flood-io_ruby-jmeter.md)

Install it yourself as:

    $ gem install ruby-jmeter

----

## Installation [0501_1000/000600_jamis_bulk_insert.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000600_jamis_bulk_insert.md)

Add it to your Gemfile:

```ruby
gem 'bulk_insert'
```

----

## Installation [0501_1000/000595_metaskills_less-rails-bootstrap.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000595_metaskills_less-rails-bootstrap.md)

LESS requires a JavaScript runtime to work. Which one you use depends on your Ruby implementation. Two are shown for Ruby (MRI) and JRuby. Add only the relevant one to your Gemfile. If you want to use Bootstrap's JavaScript plugins, also add the `jquery-rails` gem. Finally, add `less-rails-bootstrap` and run `bundle install`.

```ruby
# Gemfile

gem 'therubyracer'  # If using Ruby
gem 'therubyrhino'  # If using JRuby
gem 'jquery-rails'  # If using Bootstrap's JS plugins.
gem 'less-rails-bootstrap'
```

----

## Installation [0501_1000/000593_ankane_ahoy_email.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000593_ankane_ahoy_email.md)

Add this line to your application’s Gemfile:

```ruby
gem 'ahoy_email'
```

And run the generator. This creates a model to store messages.

```sh
rails generate ahoy_email:install
rails db:migrate
```

----

## Installation [0501_1000/000589_richhollis_swagger-docs.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000589_richhollis_swagger-docs.md)

Add this line to your application's Gemfile:

    gem 'swagger-docs'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install swagger-docs

----

## Installation [0501_1000/000589_moove-it_sidekiq-scheduler.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000589_moove-it_sidekiq-scheduler.md)

``` shell
gem install sidekiq-scheduler
```

----

## Installation [0501_1000/000588_adamwaite_iOS-Build-Kit.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000588_adamwaite_iOS-Build-Kit.md)

After the dependencies have been installed, BuildKit can be installed with:

`gem install ios_build_kit`

----

## Installation [0501_1000/000587_amatsuda_database_rewinder.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000587_amatsuda_database_rewinder.md)

Add this line to your Gemfile's `:test` group:

    gem 'database_rewinder'

And then execute:

    $ bundle

----

## Installation [0501_1000/000586_CocoaPods_cocoapods-packager.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000586_CocoaPods_cocoapods-packager.md)

```sh
$ gem install cocoapods-packager
```

or add a line to your Gemfile:

```ruby
gem "cocoapods-packager"
```

then run `bundle install`.

This installs Packager as a CocoaPods plugin.

----

## Installation [0501_1000/000582_RobinBrouwer_gritter.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000582_RobinBrouwer_gritter.md)

You can use this gem by putting the following inside your Gemfile:

    gem "gritter", "1.2.0"

Now generate the locale for gritter:

    rails g gritter:locale

Add the following to `/app/assets/javascripts/application.js`:

    //= require gritter

And the following to `/app/assets/stylesheets/application.css`:

    *= require gritter

And that's it!

----

## Installation [0501_1000/000581_ohler55_ox.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000581_ohler55_ox.md)
    gem install ox

----

## Installation [0501_1000/000581_JacobEvelyn_friends.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000581_JacobEvelyn_friends.md)

```
$ gem install friends
```

Easy, huh?

----

## Installation and Configuration [0501_1000/000581_pusher_pusher-http-ruby.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000581_pusher_pusher-http-ruby.md)

Add `pusher` to your Gemfile, and then run `bundle install`

``` ruby
gem 'pusher'
```

or install via gem

``` bash
gem install pusher
```

After registering at <https://dashboard.pusher.com/>, configure your Pusher Channels app with the security credentials.

----

## Installation [0501_1000/000578_piotrmurach_finite_machine.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000578_piotrmurach_finite_machine.md)

Add this line to your application's Gemfile:

    gem 'finite_machine'

Then execute:

    $ bundle

Or install it yourself as:

    $ gem install finite_machine

----

## Installation [0501_1000/000574_tobmatth_rack-ssl-enforcer.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000574_tobmatth_rack-ssl-enforcer.md)

The simplest way to install Rack::SslEnforcer is to use [Bundler](http://gembundler.com).

Add Rack::SslEnforcer to your `Gemfile`:

```ruby
 gem 'rack-ssl-enforcer'
```

----

## Installation & usage [0501_1000/000569_antifuchs_gmail-britta.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000569_antifuchs_gmail-britta.md)

Best to use gmail-britta from a ruby script; but install the gem first:

     gem install gmail-britta

Or include it in your Gemfile:

     gem 'gmail-britta'

This is a simple script that generates filters for you:

``` ruby
#!/bin/env ruby

require 'rubygems'
require 'gmail-britta'

fs = GmailBritta.filterset(:me => ['thisisme@my-private.org']) do
  filter {
    has %w{from:asf@boinkor.net}
    label 'from-the-author-of-gmail-britta'
    never_spam
  }
end
puts fs.generate
```

Running this script will write to stdout the filter XML that you
need. Redirect that to a file and upload it on the bottom of your
gmail filter settings, and you'll label email from me and archive it
unless I email you specifically. Not that useful, but with your own
filters and the recipes above, you should be able to make it work (-:

----

## Installation [0501_1000/000569_metricfu_metric_fu.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000569_metricfu_metric_fu.md)

    gem install metric_fu

If you have trouble installing the gem
- try adding metric_fu to your Gemfile and bundling.
- file a ticket on the issues page.

MetricFu is [cryptographically signed](http://guides.rubygems.org/security/).
To be sure the gem you install hasn't been tampered with:
- Add my public key (if you haven't already) as a trusted certificate `gem cert --add <(curl -Ls https://raw.github.com/metricfu/metric_fu/master/certs/bf4.pem)`
- `gem install metric_fu -P MediumSecurity`

The MediumSecurity trust profile will verify signed gems, but allow the installation of unsigned dependencies.

This is necessary because not all of MetricFu's dependencies are signed, so we cannot use HighSecurity.

----

## Installation [0501_1000/000569_markbates_configatron.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000569_markbates_configatron.md)

Add this line to your application's Gemfile:

```ruby
gem 'configatron'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install configatron --pre
```

----

## Installation [0501_1000/000565_Mixd_wp-deploy.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000565_Mixd_wp-deploy.md)

Take a look at the [Installation Guide](https://github.com/Mixd/wp-deploy/wiki/Installation).

----

## Installation [0501_1000/000565_amatsuda_jb.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000565_amatsuda_jb.md)

Add this line to your application's Gemfile:

```ruby
gem 'jb'
```

And bundle.


----

## Installation [0501_1000/000562_gavinlaking_vedeu.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000562_gavinlaking_vedeu.md)

To install Vedeu, simply:

    gem install vedeu

To use Vedeu's application scaffolding, see the
[RubyDoc](http://www.rubydoc.info/gems/vedeu/file/docs/getting_started.md)

----

## Installation [0501_1000/000562_fnando_kitabu.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000562_fnando_kitabu.md)

To install Kitabu, you'll need a working Ruby 2.0+ installation.
If you're cool with it, just run the following command to install it.

    gem install kitabu

After installing Kitabu, run the following command to check your external
dependencies.

    $ kitabu check

    Prince XML: Converts HTML files into PDF files.
    Installed.

    KindleGen: Converts ePub e-books into .mobi files.
    Installed.

    html2text: Converts HTML documents into plain text.
    Not installed.

There are no hard requirements here; just make sure you cleared the correct dependency based on the formats you want to export to.

----

## Installation [0501_1000/000559_codevise_pageflow.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000559_codevise_pageflow.md)

Generate a new Rails application using the MySQL database adapter:

    $ rails new my_pageflow --database=mysql
    $ cd my_pageflow

Do not name your application `"pageflow"` since it will cause conflicts
which constant names created by Pageflow itself.

----

## Installation ## [0501_1000/000558_nesquena_query_reviewer.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000558_nesquena_query_reviewer.md)

All you have to do is install it into your Rails 2 or 3 project.

    gem install query_reviewer

Right now if you use bundler, simply add this to your Gemfile:

    # Gemfile
    gem "query_reviewer"

or to use the latest from github:

    # Gemfile
    gem "query_reviewer", :github => "nesquena/query_reviewer"

If you are not using bundler, you might want to [start using it](http://gembundler.com/rails23.html). You can also install this as a plugin:

    script/plugin install git://github.com/nesquena/query_reviewer.git

In Rails 2, the rake tasks are not loaded automatically (as a gem), you’ll need to add the following to your Rakefile:

    # Rakefile
    begin
      require 'query_reviewer/tasks'
    rescue LoadError
      STDERR.puts "The query_reviewer gem could not be found!"
    end

You can then run:

    $ rake query_reviewer:setup

Which will create `config/query_reviewer.yml` in your application, see below for what these options mean.
If you don't create a config file, the gem will use the default in `vendor/plugins/query_reviewer`.

----

## Installation [0501_1000/000548_adhearsion_blather.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000548_adhearsion_blather.md)

    gem install blather

----

## Installation [0501_1000/000547_middleman-contrib_middleman-deploy.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000547_middleman-contrib_middleman-deploy.md)

```ruby
gem 'middleman-deploy', '~> 1.0'
```

----

## Installation [0501_1000/000547_mhfs_devise-async.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000547_mhfs_devise-async.md)

Add this line to your application's Gemfile:

```ruby
gem 'devise-async'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install devise-async

----

## Installation [0501_1000/000546_oleander_git-fame-rb.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000546_oleander_git-fame-rb.md)

`[sudo] gem install git_fame`

----

## Installation [0501_1000/000543_ankane_dexter.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000543_ankane_dexter.md)

First, install [HypoPG](https://github.com/HypoPG/hypopg) on your database server. This doesn’t require a restart.

```sh
cd /tmp
curl -L https://github.com/HypoPG/hypopg/archive/1.1.2.tar.gz | tar xz
cd hypopg-1.1.2
make
make install # may need sudo
```

> Note: If you have issues, make sure `postgresql-server-dev-*` is installed.

Enable logging for slow queries in your Postgres config file.

```ini
log_min_duration_statement = 10 # ms
```

And install the command line tool with:

```sh
gem install pgdexter
```

The command line tool is also available as a [Linux package](guides/Linux.md).

----

## Installation [0501_1000/000543_rails_sprockets.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000543_rails_sprockets.md)

Install Sprockets from RubyGems:

``` sh
$ gem install sprockets
```

Or include it in your project's `Gemfile` with Bundler:

``` ruby
gem 'sprockets', '~> 4.0'
```

----

## Installation [0501_1000/000541_brainopia_sidekiq-limit_fetch.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000541_brainopia_sidekiq-limit_fetch.md)

Add this line to your application's Gemfile:

    gem 'sidekiq-limit_fetch'

----

## Installation [0501_1000/000541_ryanlecompte_redis_failover.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000541_ryanlecompte_redis_failover.md)

redis_failover has an external dependency on ZooKeeper. You must have a running ZooKeeper cluster already available in order to use redis_failover. ZooKeeper provides redis_failover with its high availability and data consistency between Redis::Failover clients and the Node Manager daemon. Please see the requirements section below for more information on installing and setting up ZooKeeper if you don't have it running already.

Add this line to your application's Gemfile:

    gem 'redis_failover'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install redis_failover

----

## Installation [0501_1000/000538_slack-ruby_slack-ruby-client.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000538_slack-ruby_slack-ruby-client.md)

Add to Gemfile.

```
gem 'slack-ruby-client'
```

If you're going to be using the RealTime client, add either `async-websocket`, `eventmachine` and `faye-websocket` or `celluloid-io`. See below for more information about concurrency. We recommend you use `async-websocket`.

```
gem 'async-websocket'
```

Run `bundle install`.

----

## Installation ## [0501_1000/000536_DavyJonesLocker_party_foul.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000536_DavyJonesLocker_party_foul.md)

**Note** We highly recommend that you create a new GitHub account that is
a collaborator on your repository. Use this new account's credentials
for the installation below. If you use your own account you will
not receive emails when issues are created, updated, reopened, etc...
because all of the work is done as your account.

In your Gemfile add the following:

```ruby
gem 'party_foul'
```

----

## Installation [0501_1000/000532_jugend_amazon-ecs.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000532_jugend_amazon-ecs.md)

```shell
gem install amazon-ecs
```

----

## Installation [0501_1000/000531_caarlos0-graveyard_nprogress-rails.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000531_caarlos0-graveyard_nprogress-rails.md)

Add this line to your application's Gemfile:

    gem 'nprogress-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nprogress-rails

----

## Installation [0501_1000/000528_mrkamel_search_cop.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000528_mrkamel_search_cop.md)

Add this line to your application's Gemfile:

    gem 'search_cop'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install search_cop

----

## Installation [0501_1000/000522_nickjj_orats.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000522_nickjj_orats.md)

`gem install orats`

Or if you already have orats then run `gem update orats` to upgrade to the
latest version.

If you don't have Ruby installed, then you can
[generate an app easily with bash](#do-i-need-to-install-orats-to-use-the-base-app).

----

## Installation [0501_1000/000521_MoOx_compass-recipes.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000521_MoOx_compass-recipes.md)

[Compass Recipes is available as a gem on RubyGems.org](https://rubygems.org/gems/compass-recipes), so installation is quite easy.

```shell
(sudo) gem install compass-recipes
```

*If you want all latests recipes, you can just checkout the recipes (or download as zip) and add '{your-path-here-or-./}compass-recipes/stylesheets' using `additional_import_paths` or `add_import_path` (see [Compass configuration reference](http://compass-style.org/help/tutorials/configuration-reference/)).

More informations on the [Wiki](https://github.com/MoOx/compass-recipes/wiki)*


----

## Installation [0501_1000/000520_sstephenson_global_phone.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000520_sstephenson_global_phone.md)

1. Add the `global_phone` gem to your app. For example, using Bundler:

        $ echo "gem 'global_phone'" >> Gemfile
        $ bundle install

2. Use `global_phone_dbgen` to convert Google's libphonenumber `PhoneNumberMetaData.xml` file into a JSON database for GlobalPhone.

        $ gem install global_phone_dbgen
        $ global_phone_dbgen > db/global_phone.json

3. Tell GlobalPhone where to find the database. For example, in a Rails app, create an initializer in `config/initializers/global_phone.rb`:

    ```ruby
    require 'global_phone'
    GlobalPhone.db_path = Rails.root.join('db/global_phone.json')
    ```

----

## Installation [0501_1000/000520_timdorr_model-s-api.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000520_timdorr_model-s-api.md)

Add this line to your application's Gemfile:
```ruby
gem 'tesla_api'
```

Or install it yourself:
```sh
gem install tesla_api
```

----

## Installation [0501_1000/000517_mhenrixon_sidekiq-unique-jobs.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000517_mhenrixon_sidekiq-unique-jobs.md)

Add this line to your application's Gemfile:

    gem 'sidekiq-unique-jobs'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sidekiq-unique-jobs


----

## Installation [0501_1000/000516_commander-rb_commander.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000516_commander-rb_commander.md)

    $ gem install commander

----

## Installation [0501_1000/000516_nathanl_searchlight.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000516_nathanl_searchlight.md)

Add this line to your application's Gemfile:

    gem 'searchlight'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install searchlight

----

## Installation [0501_1000/000516_crohr_pkgr.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000516_crohr_pkgr.md)

You can find DEB and RPM packages for a wide range of distributions on Packager.io:

<https://packager.io/gh/crohr/pkgr>

Or, installing as a gem, on debian-based machines:

    sudo apt-get update
    sudo apt-get install -y build-essential ruby1.9.1-full rubygems1.9.1
    sudo gem install pkgr

----

## Installation [0501_1000/000515_bkeepers_qu.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000515_bkeepers_qu.md)

----

## Installation [0501_1000/000514_jonbuda_miro.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000514_jonbuda_miro.md)

Add this line to your application's Gemfile:

    gem 'miro'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install miro

----

## Installation [0501_1000/000514_sickill_rainbow.markdown](https://github.com/ts-3156/readmes/blob/master/0501_1000/000514_sickill_rainbow.markdown)

Add it to your Gemfile:

```ruby
gem 'rainbow'
```

Or just install it via rubygems:

```ruby
gem install rainbow
```

----

## Installation [0501_1000/000512_toland_patron.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000512_toland_patron.md)

    sudo gem install patron

Copyright (c) 2008 The Hive
----

## Installation [0501_1000/000510_stripe_poncho.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000510_stripe_poncho.md)

Add this line to your application's Gemfile:

```ruby
gem 'poncho'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install poncho

----

## Installation [0501_1000/000509_walle_gimli.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000509_walle_gimli.md)

The best way to install Gimli is with RubyGems:

    $ [sudo] gem install gimli

You can install from source:

```
$ cd gimli/
$ bundle
$ rake install
```

----

## Installation [0501_1000/000509_maccman_nestful.markdown](https://github.com/ts-3156/readmes/blob/master/0501_1000/000509_maccman_nestful.markdown)

    sudo gem install nestful

----

## Installation [0501_1000/000508_pawurb_termit.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000508_pawurb_termit.md)
```bash
gem install termit
```

----

## Installation [0501_1000/000508_winebarrel_ridgepole.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000508_winebarrel_ridgepole.md)

Add this line to your application's Gemfile:

    gem 'ridgepole'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ridgepole

----

## Installation [0501_1000/000507_github_graphql-client.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000507_github_graphql-client.md)

Add `graphql-client` to your app's Gemfile:

```ruby
gem 'graphql-client'
```

----

## Installation [0501_1000/000507_restforce_restforce.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000507_restforce_restforce.md)

Add this line to your application's Gemfile:

    gem 'restforce', '~> 3.1.0'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install restforce

__As of [version 3.0.0](https://github.com/restforce/restforce/blob/master/CHANGELOG.md#300-aug-2-2018), this gem is only compatible with Ruby 2.3.0 and later.__ You'll need to use version 2.5.3 or earlier if you're running on Ruby 2.2, 2.1 or 2.0. For Ruby 1.9.3, you'll need to manually specify that you wish to use version 2.4.2.

This gem is versioned using [Semantic Versioning](http://semver.org/), so you can be confident when updating that there will not be breaking changes outside of a major version (following format MAJOR.MINOR.PATCH, so for instance moving from 3.1.0 to 4.0.0 would be allowed to include incompatible API changes). See the [changelog](https://github.com/restforce/restforce/tree/master/CHANGELOG.md) for details on what has changed in each version.

----

## Installation [0501_1000/000506_socketry_rubydns.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000506_socketry_rubydns.md)

Add this line to your application's Gemfile:

	gem 'rubydns'

And then execute:

	$ bundle

Or install it yourself as:

	$ gem install rubydns

----

## Installation [0501_1000/000505_lautis_uglifier.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000505_lautis_uglifier.md)

Uglifier is available as a ruby gem.

    $ gem install uglifier

Ensure that your environment has a JavaScript interpreter supported by
[ExecJS](https://github.com/sstephenson/execjs). Using `therubyracer` gem
is a safe choice if a runtime isn't already present. Note that while JScript built-in Windows 7 and older works, it is extremely slow.

----

## Installation [0501_1000/000504_NARKOZ_ginatra.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000504_NARKOZ_ginatra.md)

There are 2 ways to install Ginatra: as a packaged Ruby gem or as a Sinatra app.  
It's recommended to install it as a ruby gem, unless you know what you're doing.

----

## Installation [0501_1000/000503_eagletmt_switch_point.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000503_eagletmt_switch_point.md)

Add this line to your application's Gemfile:

    gem 'switch_point'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install switch_point

----

## Installation [0501_1000/000500_oscardelben_firebase-ruby.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000500_oscardelben_firebase-ruby.md)

```
gem install firebase
```
----

## Installation [0501_1000/000499_ledermann_unread.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000499_ledermann_unread.md)

Step 1: Add this to your Gemfile:

```ruby
gem 'unread'
```

and run

```shell
bundle
```


Step 2: Generate and run the migration:

```shell
rails g unread:migration
rake db:migrate
```

----

## Installation [0501_1000/000498_leikind_wice_grid.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000498_leikind_wice_grid.md)

Add the following to your Gemfile:

```ruby
gem "wice_grid", '3.6.0.pre4'
gem 'font-awesome-sass',  '~> 4.3'
```

and run the `bundle` command. `font-awesome-sass` is not a dependency of WiceGrid in case you decide to style WiceGrid icons differently.

Run the generator:

```
rails g wice_grid:install
```

This adds the following file:
* config/initializers/wice_grid_config.rb


Require WiceGrid javascript in your js index file:

```
//= require wice_grid
```

Make sure jQuery is loaded. If the application uses Date and DateTime filters, you have to install
jQuery Datepicker by yourself. You can also use
[Bootstrap Datepicker](https://github.com/Nerian/bootstrap-datepicker-rails).

Here is an example of `application.js` if jquery.ui.datepicker is used:

```
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require wice_grid
//= require jquery.ui.datepicker
//= require_tree .
```

Here is `application.js` if [Bootstrap Datepicker](https://github.com/Nerian/bootstrap-datepicker-rails) is used:

```
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require wice_grid
//= require bootstrap-datepicker
//= require_tree .
```

Require WiceGrid and [Font Awesome](http://fortawesome.github.io/Font-Awesome/) CSS in your `application.scss`:

```
  @import "wice_grid";
  @import "font-awesome-sprockets";
  @import "font-awesome";
```

This will provide very basic styles, not specifying exactly how the table should look like, but if
the application uses Twitter Bootstrap, the markup generated by WiceGrid will have correct classes and
will fit nicely.

WiceGrid uses icons from [Font Awesome](http://fortawesome.github.io/Font-Awesome/).

Should you decide to write you own styles for WiceGrid, you can just remove these imports and write your own styles.


----

## Installation [0501_1000/000498_maxim_bootswatch-rails.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000498_maxim_bootswatch-rails.md)

Add this line to your application's Gemfile, in assets group:

    gem 'bootswatch-rails'

And then execute:

    $ bundle

----

## Installation [0501_1000/000496_nicolasblanco_rails_param.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000496_nicolasblanco_rails_param.md)

As usual, in your Gemfile...

``` ruby
  gem 'rails_param'
```

----

## Installation [0501_1000/000494_ankane_mailkick.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000494_ankane_mailkick.md)

Add this line to your application’s Gemfile:

```ruby
gem 'mailkick'
```

And run the generator. This creates a model to store opt-outs.

```sh
rails generate mailkick:install
rails db:migrate
```

----

## Installation [0501_1000/000494_xinminlabs_synvert.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000494_xinminlabs_synvert.md)

Install it using rubygems

```
$ gem install synvert
```

----

## Installation [0501_1000/000492_jipiboily_monologue.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000492_jipiboily_monologue.md)
----

## Installation [0501_1000/000491_nomad_venice.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000491_nomad_venice.md)

    $ gem install venice

----

## Installation [0501_1000/000491_github_email_reply_parser.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000491_github_email_reply_parser.md)

Get it from [GitHub][github] or `gem install email_reply_parser`.  Run `rake` to run the tests.

[github]: https://github.com/github/email_reply_parser

----

## Installation [0501_1000/000489_davidcelis_api-pagination.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000489_davidcelis_api-pagination.md)

In your `Gemfile`:

```ruby
# Requires Rails (Rails-API is also supported), or Grape
# v0.10.0 or later. If you're on an earlier version of
# Grape, use api-pagination v3.0.2.
gem 'rails', '>= 3.0.0'
gem 'rails-api'
gem 'grape', '>= 0.10.0'

# Then choose your preferred paginator from the following:
gem 'pagy'
gem 'kaminari'
gem 'will_paginate'

# Finally...
gem 'api-pagination'
```

----

## Installation [0501_1000/000487_wearefine_fae.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000487_wearefine_fae.md)

1) Add the gem to your Gemfile and run `bundle install`

```ruby
gem 'fae-rails'
```

2) Run the installer

```bash
$ rails g fae:install
```

3) Visit `/admin` and setup your super admin account

----

## Installation [0501_1000/000486_acatighera_statistics.markdown](https://github.com/ts-3156/readmes/blob/master/0501_1000/000486_acatighera_statistics.markdown)
    gem install statistics
OR
    script/plugin install git://github.com/acatighera/statistics.git

----

## Installation [0501_1000/000485_Shopify_graphql-batch.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000485_Shopify_graphql-batch.md)

Add this line to your application's Gemfile:

```ruby
gem 'graphql-batch'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install graphql-batch

----

## Installation [0501_1000/000484_stefanpenner_country_select.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000484_stefanpenner_country_select.md)

Install as a gem using

```shell
gem install country_select
```
Or put the following in your Gemfile

```ruby
gem 'country_select', '~> 4.0'
```

If you don't want to require `sort_alphabetical` (it depends on `unicode_utils` which is known to use lots of memory) you can opt out of using it as follows:

```ruby
gem 'country_select', require: 'country_select_without_sort_alphabetical'
```

----

## Installation & Setup [0501_1000/000482_tolk_tolk.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000482_tolk_tolk.md)

To install add the following to your Gemfile:

```ruby
  gem 'tolk'
```

Also add either [`kaminari`](https://github.com/amatsuda/kaminari) or [`will_paginate`](https://github.com/mislav/will_paginate):

```ruby
gem 'kaminari'
# OR
gem 'will_paginate'
```

To setup just run:

```bash
  $ rake tolk:setup
```

and follow the guide!

----

## Installation [0501_1000/000479_thesp0nge_dawnscanner.md](https://github.com/ts-3156/readmes/blob/master/0501_1000/000479_thesp0nge_dawnscanner.md)

You can install latest dawnscanner version, fetching it from
[Rubygems](https://rubygems.org) by typing:

```
$ gem install dawnscanner 
```

If you want to add dawn to your project Gemfile, you must add the following:

    group :development do
      gem 'dawnscanner', :require=>false
    end

And then upgrade your bundle

    $ bundle install

You may want to build it from source, so you have to check it out from github first:

    $ git clone https://github.com/thesp0nge/dawnscanner.git
    $ cd dawnscanner
    $ bundle install
    $ rake install

And the dawnscanner gem will be built in a pkg directory and then installed
on your system. Please note that you have to manage dependencies on your own
this way. It makes sense only if you want to hack the code or something like
that.

----

## Installation [1001_1500/000474_jetheredge_SquishIt.markdown](https://github.com/ts-3156/readmes/blob/master/1001_1500/000474_jetheredge_SquishIt.markdown)

SquishIt comes as a NuGet package and can be installed via `PM> Install-Package SquishIt`.

Latest stable package: [![nuget version](https://img.shields.io/nuget/v/SquishIt.svg)](https://www.nuget.org/packages/SquishIt).

You can also download precompiled binaries from the [SquishIt AppHarbor page](http://squishit.apphb.com/Download).

----

## Installation ## [1001_1500/000474_cequel_cequel.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000474_cequel_cequel.md)

Add it to your Gemfile:

``` ruby
gem 'cequel'
```

If you use Rails 5, add this:
``` ruby
gem 'activemodel-serializers-xml'
```

----

## Installation [1001_1500/000472_tj_pomo.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000472_tj_pomo.md)

    $ gem install pomo

----

## Installation [1001_1500/000468_glebm_rails_email_preview.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000468_glebm_rails_email_preview.md)

Add [![Gem Version][gem-badge]][gem] to Gemfile:

```ruby
gem 'rails_email_preview', '~> 2.1.0'
```

Add an initializer and the routes:

```console
$ rails g rails_email_preview:install
```

Generate preview classes and method stubs in app/mailer_previews/

```console
$ rails g rails_email_preview:update_previews
```

----

## Installation [1001_1500/000467_fnando_recurrence.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000467_fnando_recurrence.md)

    gem install recurrence

----

## Installation [1001_1500/000464_volmer_bootsy.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000464_volmer_bootsy.md)

1. Add Bootsy to your Gemfile and `bundle install` it:
  ```ruby
  gem 'bootsy'
  ```

  ```console
  bundle install
  ```

2. Mount Bootsy at the beginning of your `config/routes.rb`:
  ```ruby
  Rails.application.routes.draw do
    mount Bootsy::Engine => '/bootsy', as: 'bootsy'

    ...

  end
  ```

3. Require Bootsy in the asset pipeline:

  In your `app/assets/javascripts/application.js`, put this **after**
  requiring jQuery and Bootstrap:

  ```javascript
  //= require bootsy
  ```

  In your `app/assets/stylesheets/application.css`, put this line **after**
  requiring Bootstrap:

  ```css
  *= require bootsy
  ```

4. Add and run migrations:
  ```console
  bundle exec rake bootsy:install:migrations
  bundle exec rake db:migrate
  ```


----

## Installation [1001_1500/000463_ankane_pgsync.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000463_ankane_pgsync.md)

pgsync is a command line tool. To install, run:

```sh
gem install pgsync
```

This will give you the `pgsync` command. If installation fails, you may need to install [dependencies](#dependencies).

In your project directory, run:

```sh
pgsync --init
```

This creates `.pgsync.yml` for you to customize. We recommend checking this into your version control (assuming it doesn’t contain sensitive information). `pgsync` commands can be run from this directory or any subdirectory.

----

## Installation [1001_1500/000462_netzpirat_haml-coffee.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000462_netzpirat_haml-coffee.md)

Haml Coffee is available in NPM and can be installed with:

```bash
$ npm install haml-coffee
```

Please have a look at the [CHANGELOG](https://github.com/netzpirat/haml-coffee/blob/master/CHANGELOG.md) when upgrading to a
newer Haml Coffee version with `npm update`.

----

## Installation [1001_1500/000461_jcampbell05_xcake.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000461_jcampbell05_xcake.md)

Install the gem by running:

    sudo gem install xcake --verbose

Make sure, you have the latest version of the Xcode command line tools installed:

    xcode-select --install

If you experience slow launch times of xcake, try running

    gem cleanup

to clean up outdated gems.

System Requirements: `xcake` requires Mac OS X or Linux with Ruby 2.0.0 or above.

----

## Installation [1001_1500/000461_mongoid_mongoid-rspec.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000461_mongoid_mongoid-rspec.md)

Drop this line into your Gemfile:

```ruby
group :test do
  gem 'mongoid-rspec'
end

```

----

## Installation [1001_1500/000461_subosito_gingerice.markdown](https://github.com/ts-3156/readmes/blob/master/1001_1500/000461_subosito_gingerice.markdown)

Add this line to your application's Gemfile:

```ruby
gem 'gingerice'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install gingerice
```

----

## Installation [1001_1500/000459_f_graphql.js.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000459_f_graphql.js.md)

You can download `graphql.js` directly, or you can use **Bower** or **NPM**.

----

## Installation [1001_1500/000458_bendyworks_bwoken.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000458_bendyworks_bwoken.md)

----

## Installation [1001_1500/000458_renderedtext_render_async.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000458_renderedtext_render_async.md)
Add this line to your application's Gemfile:

```ruby
gem 'render_async'
```

And then execute:

    $ bundle install

----

## Installation [1001_1500/000458_infinum_phrasing.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000458_infinum_phrasing.md)

Include the gem in your Gemfile

```ruby
gem "phrasing"
```

Bundle the Gemfile

```ruby
bundle install
```

Run the install script which will create a migration file and a config file.

```ruby
rake phrasing:install
```

Migrate your database
```ruby
rake db:migrate
```

----

## Installation [1001_1500/000456_cesarferreira_alfi.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000456_cesarferreira_alfi.md)

Install it via terminal:

    $ gem install alfi


----

## Installation [1001_1500/000454_piotrmurach_pastel.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000454_piotrmurach_pastel.md)

Add this line to your application's Gemfile:

    gem 'pastel'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pastel

----

## Installation [1001_1500/000454_moserrya_knod.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000454_moserrya_knod.md)

```gem install knod```

----

## Installation [1001_1500/000452_railslove_rack-tracker.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000452_railslove_rack-tracker.md)

Add this line to your application's Gemfile:

    gem 'rack-tracker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-tracker

----

## Installation and usage [1001_1500/000451_codegram_pelusa.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000451_codegram_pelusa.md)

    rvm use rbx
    gem install pelusa

To run pelusa, you must run Rubinius in 1.9 mode. To do this, export this
environment variable:

    export RBXOPT=-X19

Then go to a directory where you have some Ruby code, and type this:

    pelusa path/to/some_file.rb

Or just run all the Ruby files (`**/*.rb`) without arguments:

    pelusa

----

## Installation [1001_1500/000449_emilioforrer_haml_coffee_assets.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000449_emilioforrer_haml_coffee_assets.md)

The simplest way to install Haml Coffee Assets is to use [Bundler](http://gembundler.com/).
Add `haml_coffee_assets` and `execjs` to your `Gemfile`:

```ruby
group :assets do
  gem 'haml_coffee_assets'
  gem 'execjs'
end
```
(note that Rails 4.0 [removed the assets group](https://github.com/rails/rails/commit/49c4af43ec5819d8f5c1a91f9b84296c927ce6e7) from Gemfile and so you don't need that line) and require the `hamlcoffee.js` in your `app/assets/javascripts/templates/context.js.coffee`:

```coffeescript
#= require hamlcoffee
```

If you're using AMD support then you do not need to include the above helper, since it will be automatically included.

This provides the default escaping and the global context functions. Read more about it in the configuration section
below.

Please have a look at the [CHANGELOG](https://github.com/emilioforrer/haml_coffee_assets/blob/master/CHANGELOG.md) when
upgrading to a newer Haml Coffee Assets version.

If you want to use Haml Coffee with Sinatra, please have a look at the
[Haml Coffee Sinatra](https://github.com/netzpirat/haml-coffee-sinatra) demo application.

----

## Installation [1001_1500/000449_ankane_pretender.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000449_ankane_pretender.md)

Add this line to your application’s Gemfile:

```ruby
gem 'pretender'
```

And add this to your `ApplicationController`:

```ruby
class ApplicationController < ActionController::Base
  impersonates :user
end
```

----

## Installation [1001_1500/000449_dkhamsing_awesome_bot.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000449_dkhamsing_awesome_bot.md)

    $ gem install awesome_bot

----

## Installation [1001_1500/000447_tigrish_devise-i18n.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000447_tigrish_devise-i18n.md)

Add to your Gemfile:
```ruby
gem 'devise-i18n'
```

Assuming you have _not_ previously generated Devise's views into your project, that's all you need to do. If you _have_ previously done this, you will need to regenerate your views (see the next section) and then reapply whatever customizations that made you do this in the first place.

NOTE: If you have the ```simple_form``` gem in your Gemfile, this command will generate the corresponding views using the simple_form form builder.

----

## Installation [1001_1500/000446_sorentwo_readthis.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000446_sorentwo_readthis.md)

Add this line to your application's Gemfile:

```ruby
gem 'readthis'
gem 'hiredis' # Highly recommended
```

----

## Installation [1001_1500/000446_zeisler_active_mocker.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000446_zeisler_active_mocker.md)

Add this line to your application's Gemfile:
```ruby
group :development, :test do
  gem 'active_mocker'
end
```
It needs to be in development as well as test groups, as the development environment is where mocks will be generated.
Then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_mocker

----

## Installation [1001_1500/000444_sass_sassc-rails.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000444_sass_sassc-rails.md)

Add this line to your application's Gemfile:

```ruby
gem 'sassc-rails'
```

And then execute:

    $ bundle

----

## Installation [1001_1500/000443_Kapeli_cheatset.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000443_Kapeli_cheatset.md)

    $ sudo gem install cheatset --no-ri --no-rdoc

Note: this requires the Xcode Command Line Tools to be installed. Install them using this:

    $ xcode-select --install
    
----

## Installation [1001_1500/000442_straydogstudio_axlsx_rails.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000442_straydogstudio_axlsx_rails.md)

In your Gemfile:

```ruby
gem 'rubyzip', '>= 1.2.1'
gem 'axlsx', git: 'https://github.com/randym/axlsx.git', ref: 'c8ac844'
gem 'axlsx_rails'
```

**NOTE:** Axlsx has been pending release for a long time. You must specify the master on github to support Rubyzip 1.2.1.

If `rubyzip 1.0.0` is needed:

```ruby
gem 'rubyzip', '= 1.0.0'
gem 'axlsx', '= 2.0.1'
gem 'axlsx_rails'
```

If `rubyzip >= 1.1.0` is needed:

```ruby
gem 'rubyzip', '~> 1.1.0'
gem 'axlsx', '2.1.0.pre'
gem 'axlsx_rails'
```

----

## Installation [1001_1500/000442_rrrene_inch.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000442_rrrene_inch.md)

Add this line to your application's Gemfile:

    gem 'inch', require: false

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inch



----

## Installation [1001_1500/000441_danielguillan_bem-constructor.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000441_danielguillan_bem-constructor.md)

There are 4 ways of installing BEM Constructor:

----

## Installation [1001_1500/000440_astrails_safe.markdown](https://github.com/ts-3156/readmes/blob/master/1001_1500/000440_astrails_safe.markdown)

    sudo gem install astrails-safe --source http://gemcutter.org

----

## Installation [1001_1500/000439_Sorcery_sorcery.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000439_Sorcery_sorcery.md)

Add this line to your application's Gemfile:

```ruby
gem 'sorcery'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sorcery

----

## Installation [1001_1500/000438_chriseppstein_sass-globbing.markdown](https://github.com/ts-3156/readmes/blob/master/1001_1500/000438_chriseppstein_sass-globbing.markdown)

    $ gem install sass-globbing

----

## Installation [1001_1500/000438_moiristo_deep_cloneable.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000438_moiristo_deep_cloneable.md)

* Add deep_cloneable to your Gemfile:

```ruby
gem 'deep_cloneable', '~> 2.4.0'
```

----

## Installation [1001_1500/000437_opal_opal-rails.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000437_opal_opal-rails.md)

In your `Gemfile`

```ruby
gem 'opal-rails'
```

or when you build your new Rails app:

```bash
rails new <app-name> --javascript=opal
```


----

## Installation [1001_1500/000437_holidays_holidays.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000437_holidays_holidays.md)

```
gem install holidays
```

----

## Installation [1001_1500/000437_yatish27_linkedin-scraper.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000437_yatish27_linkedin-scraper.md)

Install the gem from RubyGems:

    gem install linkedin-scraper

This gem is tested on 1.9.2, 1.9.3, 2.0.0, 2.2, 2.3

----

## Installation [1001_1500/000435_plataformatec_show_for.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000435_plataformatec_show_for.md)

Install the gem:

    gem install show_for

Or add ShowFor to your Gemfile and bundle it up:

    gem 'show_for'

Run the generator:

    rails generate show_for:install

And you are ready to go.

Note: This branch aims Rails 3.2 and 4 support, so if you want to use it with
older versions of Rails, check out the available branches.

----

## Installation [1001_1500/000435_agoragames_leaderboard.markdown](https://github.com/ts-3156/readmes/blob/master/1001_1500/000435_agoragames_leaderboard.markdown)

`gem install leaderboard`

or in your `Gemfile`

```ruby
gem 'leaderboard'
```

Make sure your redis server is running! Redis configuration is outside the scope of this README, but
check out the [Redis documentation](http://redis.io/documentation).

----

## Installation [1001_1500/000434_frosas_spotify-to-mp3.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000434_frosas_spotify-to-mp3.md)

----

## Installation [1001_1500/000432_Sology_smart_listing.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000432_Sology_smart_listing.md)

Add to your Gemfile:

```ruby
gem "smart_listing"
```

Then run:

```sh
$ bundle install
```

Also, you need to add SmartListing to your asset pipeline:

```
//= require smart_listing
```

__Rails >= 5.1 users__: Rails 5.1 has dropped jQuery dependency from the default stack in favour of `rails-ujs`. SmartListing still requires jQuery so make sure that you use `jquery_ujs` from `jquery-rails` gem and have following requires in your asset pipeline before `smart_listing`:
```
//= require jquery
//= require jquery_ujs
```

----

## Installation [1001_1500/000431_inf0rmer_blanket.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000431_inf0rmer_blanket.md)

Add this line to your application's Gemfile:

```ruby
gem 'blanket_wrapper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blanket_wrapper

----

## Installations [1001_1500/000430_adelevie_parse-ruby-client.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000430_adelevie_parse-ruby-client.md)

----

## Installation [1001_1500/000428_CocoaPods_Rome.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000428_CocoaPods_Rome.md)

```bash
$ gem install cocoapods-rome
```

----

## Installation [1001_1500/000426_sconover_wrong.markdown](https://github.com/ts-3156/readmes/blob/master/1001_1500/000426_sconover_wrong.markdown)

    gem install wrong

We have deployed gems for both Ruby and JRuby; if you get dependency issues on your platform, please let us know what Ruby interpreter and version you're using and what errors you get, and we'll try to track it down.

----

## Installation [1001_1500/000426_m1foley_fit-commit.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000426_m1foley_fit-commit.md)

Install the gem:

    $ gem install fit-commit

Install the hook in your Git repo:

    $ fit-commit install

This creates a `.git/hooks/commit-msg` script which will automatically check your Git commit messages.

----

## Installation [1001_1500/000424_github_github-ds.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000424_github_github-ds.md)

Add this line to your application's Gemfile:

```ruby
gem 'github-ds'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install github-ds

----

## Installation [1001_1500/000423_rails_rails-observers.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000423_rails_rails-observers.md)

Add this line to your application's Gemfile:
```ruby
gem 'rails-observers'
```
And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-observers

----

## Installation [1001_1500/000421_bokmann_fullcalendar-rails.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000421_bokmann_fullcalendar-rails.md)
In order to install the fullcalendar-rails gem and get FullCalendar working within your application, do the following steps:

1. Add to `gemfile`
    ```ruby
    gem 'fullcalendar-rails'
    gem 'momentjs-rails'
    ```
    
1. Bundle install and restart rails server.

1. Add to `application.js`
    ```jquery
    //= require moment 
    //= require fullcalendar
    //= require fullcalendar/locale-all
    
    $('#calendar').fullCalendar({});
    ```
    The line `//= require fullcalendar/locale-all` is just necessary if you need the calendar in another language than english.

1. Add to `application.css`
    ```css
    *= require fullcalendar
    ```
    
1. In view, include the following html:
    ```html
    <div id="calendar"></div>
    ```
    Now if you go to that view you should see the FullCalendar.

1. Reference the Using FullCalendar section for details on populating FullCalendar.

----

## Installation [1001_1500/000420_seuros_capistrano-puma.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000420_seuros_capistrano-puma.md)

Add this line to your application's Gemfile:

    gem 'capistrano3-puma', github: "seuros/capistrano-puma"

or:

    gem 'capistrano3-puma' , group: :development

And then execute:

    $ bundle

----

## Installation [1001_1500/000419_cristibalan_braid.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000419_cristibalan_braid.md)

    gem install braid

----

## Installation [1001_1500/000418_davydovanton_sidekiq-statistic.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000418_davydovanton_sidekiq-statistic.md)
Add this line to your application's Gemfile:

    gem 'sidekiq-statistic'

And then execute:

    $ bundle

----

## Installation [1001_1500/000415_oesmith_puffing-billy.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000415_oesmith_puffing-billy.md)

Add this line to your application's Gemfile:

    gem 'puffing-billy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install puffing-billy

----

## Installation [1001_1500/000415_jnunemaker_nunes.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000415_jnunemaker_nunes.md)

Add this line to your application's Gemfile:

    gem "nunes"

Or install it yourself as:

    $ gem install nunes

----

## Installation [1001_1500/000414_rails_sprockets-rails.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000414_rails_sprockets-rails.md)

``` ruby
gem 'sprockets-rails', :require => 'sprockets/railtie'
```

Or alternatively `require 'sprockets/railtie'` in your `config/application.rb` if you have Bundler auto-require disabled.


----

## Installation [1001_1500/000411_BerlinVagrant_vagrant-dns.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000411_BerlinVagrant_vagrant-dns.md)

    $ vagrant plugin install vagrant-dns

**Attention: As of v2.0.0, vagrant-dns requires vagrant >= 1.9.6** (because it ships with a more modern version of ruby)  
If you get an error like `rubydns requires Ruby version >= 2.2.6.` while installing, you probably need to upgrade vagrant.  
Alternatively, you can install an older version of vagrant-dns like this: `vagrant plugin install --plugin-version="<2" vagrant-dns` 

----

## Installation [1001_1500/000410_wpeterson_emoji.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000410_wpeterson_emoji.md)

First, add this line to your application's Gemfile:

```ruby
gem 'emoji'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install emoji

Finally, install the emoji image library assets:

    $ rake emoji:install_assets
    ====================================================================
    = emoji image assets install
    = Target: /Users/user/src/rails-app/app/assets/images/emoji
    = Source: /Users/user/src/emoji/assets/images
    ====================================================================
    - Creating /Users/user/src/rails-app/app/assets/images/emoji...
    - Installing assets...

----

## Installation [1001_1500/000408_svenfuchs_routing-filter.markdown](https://github.com/ts-3156/readmes/blob/master/1001_1500/000408_svenfuchs_routing-filter.markdown)

Just install the Gem:

    $ gem install routing-filter

The Gem should work out of the box with Rails 4.2 after specifying it in your
application's Gemfile.

```ruby
# Gemfile
gem 'routing-filter'
```

----

## Installation [1001_1500/000407_cookpad_rrrspec.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000407_cookpad_rrrspec.md)

----

## Installation [1001_1500/000404_SammyLin_redactor-rails.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000404_SammyLin_redactor-rails.md)

Add this line to your application's Gemfile:

    gem 'redactor-rails'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install redactor-rails

----

## Installation [1001_1500/000403_cucumber-attic_gherkin2.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000403_cucumber-attic_gherkin2.md)

----

## Installation [1001_1500/000403_jenseng_immigrant.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000403_jenseng_immigrant.md)

Add the following to your Gemfile:

```ruby
gem 'immigrant'
```

If you're using a version of Rails prior to 4.2, you'll also need the
[Foreigner](https://github.com/matthuhiggins/foreigner) gem.

----

## Installation [1001_1500/000399_guilleiguaran_fakeredis.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000399_guilleiguaran_fakeredis.md)

Install the gem:

    gem install fakeredis

Add it to your Gemfile:

    gem "fakeredis"


----

## Installation and Dependencies [1001_1500/000398_yomurb_yomu.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000398_yomurb_yomu.md)

----

## Installation [1001_1500/000396_jeffbyrnes_railsless-deploy.markdown](https://github.com/ts-3156/readmes/blob/master/1001_1500/000396_jeffbyrnes_railsless-deploy.markdown)

    # gem install railsless-deploy

----

## Installation [1001_1500/000394_joost_phony_rails.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000394_joost_phony_rails.md)

Add this line to your application's Gemfile:

```ruby
gem 'phony_rails' # Include phony_rails after mongoid (if you use mongoid, see issue #66 on github).
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install phony_rails
```

----

## Installation [1001_1500/000394_markets_invisible_captcha.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000394_markets_invisible_captcha.md)

Invisible Captcha is tested against Rails `>= 3.2` and Ruby `>= 2.2`.

Add this line to you Gemfile:

```
gem 'invisible_captcha'
```

Or install the gem manually:

```
$ gem install invisible_captcha
```

----

## Installation [1001_1500/000394_varvet_godmin.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000394_varvet_godmin.md)

Godmin supports two common admin scenarios:

1. Standalone installation
2. Engine installation

If you want to set up an example app that you can play around with, run the following:
```sh
rails new sandbox --skip-spring -m https://raw.githubusercontent.com/varvet/godmin/master/template.rb
```

----

## Installation [1001_1500/000392_humante_redis-browser.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000392_humante_redis-browser.md)

To use with ruby version < 2.2, you must install specifically from 0.4 line which is maintained in `ruby-1.9.2+` branch.

```bash
$ gem install redis-browser --version '~> 0.4.0'
```

Otherwise install the newest version.

```bash
$ gem install redis-browser
```

----

## Installation [1001_1500/000391_getoutreach_epf.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000391_getoutreach_epf.md)

For now, as epf is in development, follow the development instructions to use epf. The `build-browser` command will create browser-compatible distributables in the `dist` folder. Include `epf.js` in the page after `ember.js`.

----

## Installation [1001_1500/000391_rstgroup_active_skin.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000391_rstgroup_active_skin.md)

As active_skin is the css theme for the [active_admin](https://github.com/gregbell/active_admin) administration framework - you have to install if first.

Having active admin installed add the following line to your application's Gemfile:

    gem 'active_skin'

----

## Installation [1001_1500/000391_7compass_sentimental.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000391_7compass_sentimental.md)

    gem install sentimental

----

## Installation [1001_1500/000391_keepcosmos_terjira.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000391_keepcosmos_terjira.md)

Install it yourself as:

    $ gem install terjira

If you have permission problem,

    $ sudo gem install terjira

    # or

    $ gem install terjira --user-install
    # You need to export your gem path


----

## Installation [1001_1500/000391_sickill_racksh.markdown](https://github.com/ts-3156/readmes/blob/master/1001_1500/000391_sickill_racksh.markdown)

    gem install racksh

----

## Installation [1001_1500/000389_whichdigital_active-rest-client.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000389_whichdigital_active-rest-client.md)

Add this line to your application's Gemfile:

```ruby
gem 'active_rest_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_rest_client

----

## Installation [1001_1500/000387_gottfrois_link_thumbnailer.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000387_gottfrois_link_thumbnailer.md)

Add this line to your application's Gemfile:

```ruby
gem 'link_thumbnailer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install link_thumbnailer

Run:

	$ rails g link_thumbnailer:install

This will add `link_thumbnailer.rb` to `config/initializers/`.

----

## Installation [1001_1500/000387_fgrehm_ventriloquist.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000387_fgrehm_ventriloquist.md)

Make sure you have Vagrant 1.6+ and run:

```
vagrant plugin install ventriloquist
```


----

## Installation [1001_1500/000386_LouisBarranqueiro_reapop.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000386_LouisBarranqueiro_reapop.md)

```
npm install reapop --save
```

----

## Installation [1001_1500/000384_pboling_flag_shih_tzu.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000384_pboling_flag_shih_tzu.md)

----

## Installation [1001_1500/000384_ruby_psych.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000384_ruby_psych.md)

Psych has been included with MRI since 1.9.2, and is the default YAML parser
in 1.9.3.

If you want a newer gem release of Psych, you can use rubygems:

    gem install psych

In order to use the gem release in your app, and not the stdlib version,
you'll need the following:

    gem 'psych'
    require 'psych'

Or if you use Bundler add this to your `Gemfile`:

    gem 'psych'

JRuby ships with a pure Java implementation of Psych.

If you're on Rubinius, Psych is available in 1.9 mode, please refer to the
Language Modes section of the [Rubinius
README](https://github.com/rubinius/rubinius#readme) for more information on
building and 1.9 mode.

----

## Installation [1001_1500/000383_apneadiving_waterfall.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000383_apneadiving_waterfall.md)

For installation, in your gemfile:

    gem 'waterfall'

then `bundle` as usual.

----

## Installation [1001_1500/000382_wojteklu_depcheck.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000382_wojteklu_depcheck.md)

Add this line to your application's Gemfile:

```ruby
gem 'depcheck'
```

And then execute:

```sh
$ bundle
```

Or install the gem:

```sh
gem install depcheck
```

----

## Installation [1001_1500/000382_Nedomas_zapata.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000382_Nedomas_zapata.md)

It should be as easy as
```sh
gem install zapata
```

or

```ruby
gem 'zapata', groups: %w(development test)
```

----

## Installation [1001_1500/000382_nesquena_backburner.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000382_nesquena_backburner.md)

First, you probably want to [install beanstalkd](http://kr.github.com/beanstalkd/download.html), which powers the job queues.
Depending on your platform, this should be as simple as (for Ubuntu):

    $ sudo apt-get install beanstalkd

Add this line to your application's Gemfile:

    gem 'backburner'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install backburner

----

## Installation [1001_1500/000380_gogotanaka_Rubype.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000380_gogotanaka_Rubype.md)

gem install rubype or add gem 'rubype' to your Gemfile.

And `require 'rubype'`, enjoy typed Ruby.

This gem requires Ruby 2.0.0+.

----

## Installation [1001_1500/000380_fotinakis_swagger-blocks.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000380_fotinakis_swagger-blocks.md)

Add this line to your application's Gemfile:

    gem 'swagger-blocks'

Or install directly with `gem install swagger-blocks`.

----

## Installation [1001_1500/000378_andypike_rectify.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000378_andypike_rectify.md)

To install, add it to your `Gemfile`:

```ruby
gem "rectify"
```

Then use Bundler to install it:

```
bundle install
```

----

## Installation [1001_1500/000374_iberianpig_fusuma.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000374_iberianpig_fusuma.md)

----

## Installation [1001_1500/000374_searls_jasmine-rails.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000374_searls_jasmine-rails.md)

First, add jasmine-rails to your Gemfile, like so

    group :test, :development do
      gem 'jasmine-rails'
    end

Next:

```
$ bundle install
```

And finally, run the Rails generator:

```
$ rails generate jasmine_rails:install
```

The generator will create the necessary configuration files and mount a test
runner to [/specs](http://localhost:3000/specs) so that you can get started
writing specs!

----

## Installation [1001_1500/000374_tra_spawnling.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000374_tra_spawnling.md)

The name of the gem is "spawnling" (unfortunately somebody took the name "spawn" before
I was able to convert this to a gem).

----

## Installation [1001_1500/000372_heapsource_active_model_otp.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000372_heapsource_active_model_otp.md)

Add this line to your application's Gemfile:

    gem 'active_model_otp'

And then execute:

    $ bundle

Or install it yourself as follows:

    $ gem install active_model_otp

----

## Installation [1001_1500/000372_stretcher_stretcher.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000372_stretcher_stretcher.md)

Add this line to your application's Gemfile:

```ruby
gem 'stretcher'
```

----

## Installation [1001_1500/000370_jekyll_jekyll-redirect-from.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000370_jekyll_jekyll-redirect-from.md)

Add this line to your application's Gemfile:

    gem 'jekyll-redirect-from'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-redirect-from

Once it's installed into your evironment, add it to your `_config.yml`:

```yaml
plugins:
  - jekyll-redirect-from
```

💡 If you are using a Jekyll version less than 3.5.0, use the `gems` key instead of `plugins`.

If you're using Jekyll in `safe` mode to mimic GitHub Pages, make sure to
add jekyll-redirect-from to your whitelist:

```yaml
whitelist:
  - jekyll-redirect-from
```

Then run `jekyll <cmd> --safe` like normal.

----

## Installation [1001_1500/000370_gael-ian_vagrant-bindfs.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000370_gael-ian_vagrant-bindfs.md)

vagrant-bindfs is distributed as a Ruby gem. 
You can install it as any other Vagrant plugin with:

```bash
vagrant plugin install vagrant-bindfs
```


----

## Installation [1001_1500/000370_lostboy_workless.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000370_lostboy_workless.md)

Add the workless gem and the delayed_job gem to your project Gemfile and update your bundle. Its is recommended to specify the gem version for delayed_job

----

## Installation [1001_1500/000370_gotwalt_sonos.markdown](https://github.com/ts-3156/readmes/blob/master/1001_1500/000370_gotwalt_sonos.markdown)

Add this line to your application's Gemfile:

``` ruby
gem 'sonos'
```

And then execute:

``` shell
$ bundle
```

Or install it yourself as:

``` shell
$ gem install sonos
```

----

## Installation [1001_1500/000370_seejohnrun_haste-client.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000370_seejohnrun_haste-client.md)

``` bash
gem install haste
```

----

## Installation [1001_1500/000369_pcreux_csv-importer.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000369_pcreux_csv-importer.md)

Add this line to your application's Gemfile:

```ruby
gem 'csv-importer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install csv-importer

----

## Installation [1001_1500/000368_halogenandtoast_oath.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000368_halogenandtoast_oath.md)

Oath was designed to work with Rails > 4.0. Add this line to your Gemfile:

    gem 'oath'

Then inside of your ApplicationController add the following:

    include Oath::ControllerHelpers

And you're ready to start designing your authentication system.

----

## Installation [1001_1500/000368_mdp_gibberish.markdown](https://github.com/ts-3156/readmes/blob/master/1001_1500/000368_mdp_gibberish.markdown)

    gem install gibberish

----

## Installation [1001_1500/000366_rodjek_rspec-puppet.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000366_rodjek_rspec-puppet.md)

    gem install rspec-puppet

> Note for ruby 1.8 users:  while rspec-puppet itself supports ruby 1.8, you'll
> need to pin rspec itself to `~> 3.1.0`, as later rspec versions do not work
> on old rubies anymore.

----

## Installation [1001_1500/000366_mrkn_pycall.rb.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000366_mrkn_pycall.rb.md)

Add this line to your application's Gemfile:

```ruby
gem 'pycall'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install --pre pycall

----

## Installation [1001_1500/000366_froala_wysiwyg-rails.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000366_froala_wysiwyg-rails.md)

Add this to your Gemfile:

```ruby
gem "wysiwyg-rails"
gem "font-awesome-sass"
```

and run `bundle install`.

Note, you can include your own alternative Font Awesome implementation rather than the `font-awesome-sass` gem if you like. In that case, you'll need to modify/remove the import statements below to work with your implementation.

----

## Installation [1001_1500/000366_emad-elsaid_rubrowser.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000366_emad-elsaid_rubrowser.md)


```
gem install rubrowser
```

----

## Installation [1001_1500/000364_state-machines_state_machines.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000364_state-machines_state_machines.md)

Add this line to your application's Gemfile:

    gem 'state_machines'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install state_machines

----

## Installation for jRuby [1001_1500/000364_SciRuby_iruby.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000364_SciRuby_iruby.md)

Since jRuby is fully compatible with Ruby version 2.2, it is possible to use iruby with jRuby. 
It can be helpful if you want to use java classes in your iruby notebook.
This will require the following software:
* jRuby version >= 9.0.4.0
* cztop gem
* this iruby gem

After installation, make sure that your `env` is set up to jruby.
```shell
$ env ruby -v
```
If you use RVM, it is enough to switch the current version to jruby.
If you have already used iruby with a different version, you need to generate a new kernel:
```shell
$ iruby register --force
```
After that you can use iruby with jRuby in usual way.

----

## Installation [1001_1500/000362_dwbutler_logstash-logger.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000362_dwbutler_logstash-logger.md)

Add this line to your application's Gemfile:

    gem 'logstash-logger'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install logstash-logger

----

## Installation [1001_1500/000362_guilhermesad_rspotify.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000362_guilhermesad_rspotify.md)

Add this line to your application's Gemfile:

    gem 'rspotify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspotify

----

## Installation [1001_1500/000362_philostler_rspec-sidekiq.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000362_philostler_rspec-sidekiq.md)
```ruby
# Gemfile
group :test do
  gem 'rspec-sidekiq'
end
```
rspec-sidekiq requires ```sidekiq/testing``` by default so there is no need to include the line ```require "sidekiq/testing"``` inside your ```spec_helper.rb```.

*IMPORTANT! This has the effect of not pushing enqueued jobs to Redis but to a ```job``` array to enable testing ([see the FAQ & Troubleshooting Wiki page][rspec_sidekiq_wiki_faq_&_troubleshooting]). Thus, only include ```gem "rspec-sidekiq"``` in environments where this behaviour is required, such as the ```test``` group.*

----

## Installation ## [1001_1500/000362_DavyJonesLocker_ruby-destroyed_at.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000362_DavyJonesLocker_ruby-destroyed_at.md)

Add the `destroyed_at` gem to your `Gemfile`

```ruby
gem 'destroyed_at'
```

You can either mixin the modules on a case-by-case basis:

```ruby
class User < ActiveRecord::Base
  include DestroyedAt
end
```

or make the changes globally:

```ruby
class ActiveRecord::Base
  include DestroyedAt
end
```

**Please note you will need to make a migration**

Each model's table that is expected to have this behavior **must** have
a `destroyed_at` column of type `DateTime`.

It is recommended that you add an index on the model's `destroyed_at` column,
so that your database does not have to do a table scan for every query.
Only Postgres' query indexes will be of any benefit:

```db
CREATE INDEX ON users WHERE destroyed_at IS NULL;
CREATE INDEX ON users WHERE destroyed_at IS NOT NULL;
```

----

## Installation [1001_1500/000361_chrishunt_github-auth.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000361_chrishunt_github-auth.md)

Install the `github-auth` gem:

```bash
$ gem install github-auth
```

----

## Installation [1001_1500/000361_capistrano_symfony.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000361_capistrano_symfony.md)

Specify your dependencies: 
```
# Gemfile
source 'https://rubygems.org'
gem 'capistrano',  '~> 3.11'
gem 'capistrano-symfony', '~> 2.0.0.pre.alfa2'
```

Install your dependencies: 
```
bundle install
```

When `capistrano` and `capistrano-symfony` is installed. Run the following command
to set up your local files:

```
cap install
```

Make Capistrano aware of `'capistrano/symfony'` by requiring capistrano-symfony in your
new Capfile after `require "capistrano/deploy"`.

```ruby
# Capfile
# ...
require "capistrano/symfony"
```

If you use composer you might want this:
```
require "capistrano/composer"
```

----

## Installation [1001_1500/000361_johnbintz_rack-livereload.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000361_johnbintz_rack-livereload.md)

----

## Installation [1001_1500/000360_github_task_list.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000360_github_task_list.md)

Task Lists are packaged as both a RubyGem with both backend and frontend behavior, and a Bower package with just the frontend behavior.

----

## Installation [1001_1500/000359_ThoughtWorksStudios_eb_deployer.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000359_ThoughtWorksStudios_eb_deployer.md)

    $ gem install eb_deployer

----

## Installation [1001_1500/000358_mhfs_sidekiq-failures.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000358_mhfs_sidekiq-failures.md)

Add this line to your application's Gemfile:

```ruby
gem 'sidekiq-failures'
```

----

## Installation [1001_1500/000357_calonso_ruby-push-notifications.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000357_calonso_ruby-push-notifications.md)

Add this line to your application's Gemfile:

    gem 'ruby-push-notifications'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby-push-notifications

----

## Installation [1001_1500/000356_palkan_test-prof.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000356_palkan_test-prof.md)

Add `test-prof` gem to your application:

```ruby
group :test do
  gem 'test-prof'
end
```

And that's it)

----

## Installation [1001_1500/000354_asakusarb_action_args.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000354_asakusarb_action_args.md)

Put this line in your Gemfile:
```ruby
gem 'action_args'
```

Then bundle:
```sh
% bundle
```

----

## Installation [1001_1500/000354_fgrehm_letter_opener_web.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000354_fgrehm_letter_opener_web.md)

First add the gem to your development environment and run the `bundle` command to install it.

```ruby
group :development do
  gem 'letter_opener_web', '~> 1.0'
end
```

----

## Installation [1001_1500/000353_rossta_montrose.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000353_rossta_montrose.md)

Add this line to your application's Gemfile:

```ruby
gem "montrose"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install montrose

----

## Installation [1001_1500/000351_spikex_strongbox.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000351_spikex_strongbox.md)

Include the gem in your Gemfile:

```ruby
gem "strongbox"
```

Still using 2.x without a Gemfile? Put the following in
`config/environment.rb`:

```ruby
config.gem "strongbox"
```

----

## Installation [1001_1500/000350_salkar_inkwell.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000350_salkar_inkwell.md)

To get Inkwell from RubyGems, put the following line in the `Gemfile`.

```ruby
gem 'inkwell'
```

Alternatively, you can get it from Github (This version may contain unfinished features).

```ruby
gem 'inkwell', :git => 'git://github.com/salkar/inkwell.git'
```

After that, run `bundle install`

Next, get gem migrations:

```bash
$ rake inkwell:install:migrations
```

and `rake db:migrate` them.

----

## Installation [1001_1500/000350_Shopify_kubernetes-deploy.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000350_Shopify_kubernetes-deploy.md)

1. [Install kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-binary-via-curl) (requires v1.10.0 or higher) and make sure it is available in your $PATH
2. Set up your [kubeconfig file](https://kubernetes.io/docs/tasks/access-application-cluster/authenticate-across-clusters-kubeconfig/) for access to your cluster(s).
3. `gem install kubernetes-deploy`




----

## Installation [1001_1500/000349_bernerdschaefer_akephalos.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000349_bernerdschaefer_akephalos.md)

    gem install akephalos

----

## Installation [1001_1500/000349_fredwu_datamappify.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000349_fredwu_datamappify.md)

Add this line to your application's Gemfile:

    gem 'datamappify'

----

## Installation [1001_1500/000348_usmanbashir_haikunator.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000348_usmanbashir_haikunator.md)

Add this line to your application's Gemfile:

    gem 'haikunator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install haikunator

----

## Installation [1001_1500/000348_weppos_publicsuffix-ruby.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000348_weppos_publicsuffix-ruby.md)

You can install the gem manually:

```shell
$ gem install public_suffix
```

Or use Bundler and define it as a dependency in your `Gemfile`:

```ruby
gem 'public_suffix'
```

If you are upgrading to 2.0, see [2.0-Upgrade.md](2.0-Upgrade.md).

----

## Installation [1001_1500/000347_braintree_braintree_ruby.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000347_braintree_braintree_ruby.md)

```ruby
gem install braintree
```

Or add to your Gemfile:

```ruby
gem 'braintree'
```

----

## Installation [1001_1500/000347_jekyll_jekyll-feed.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000347_jekyll_jekyll-feed.md)

Add this line to your site's Gemfile:

```ruby
gem 'jekyll-feed'
```

And then add this line to your site's `_config.yml`:

```yml
plugins:
  - jekyll-feed
```

:warning: If you are using Jekyll < 3.5.0 use the `gems` key instead of `plugins`.

----

## Installation [1001_1500/000346_glebm_order_query.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000346_glebm_order_query.md)

Add to Gemfile:

```ruby
gem 'order_query', '~> 0.4.1'
```

----

## Installation [1001_1500/000345_ko1_allocation_tracer.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000345_ko1_allocation_tracer.md)

Add this line to your application's Gemfile:

    gem 'allocation_tracer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install allocation_tracer

----

## Installation [1001_1500/000345_bellycard_napa.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000345_bellycard_napa.md)

Napa is available as a gem, to install it run:

```
gem install napa
```

Or, if you're using Bundler, add it to your Gemfile:

```
gem 'napa'
```

And run:

```
$ bundle install
```

----

## Installation [1001_1500/000341_barsoom_attr_extras.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000341_barsoom_attr_extras.md)

Add this line to your application's `Gemfile`:

    gem "attr_extras"

And then execute:

    bundle

Or install it yourself as:

    gem install attr_extras


----

## Installation [1001_1500/000341_imanel_websocket-ruby.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000341_imanel_websocket-ruby.md)

WebSocket Ruby has no external dependencies, so it can be installed from source or directly from rubygems:

```
gem install "websocket"
```

or via Gemfile:

```
gem "websocket"
```

----

## Installation [1001_1500/000340_tansengming_stripe-rails.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000340_tansengming_stripe-rails.md)

Add this line to your application's Gemfile:

```ruby
gem 'stripe-rails'
```

If you are going to be using [stripe.js][1] to securely collect credit card information
on the client, then you will need to add the stripe javascript tags into your template.
stripe-rails provides a helper to make this easy:

```erb
<%= stripe_javascript_tag %>
```

or, you can render it as a partial:

```erb
<%= render :partial => 'stripe/js' %>
```

In both cases, stripe-rails will choose a version of stripe.js appropriate for your
development environment and automatically configure it to use
your publishable API key. By default it uses `stripe-debug.js` for your `development`
environment and `stripe.js` for everything else, but you can manually configure it
per environment.

```ruby
config.stripe.debug_js = true  # use stripe-debug.js
config.stripe.debug_js = false # use stripe.js
```

By default the helper renders the `v3` version of `stripe.js`. You can provide an
alternate version to the helper to generate the appropriate tag:

```erb
<%= stripe_javascript_tag(:v2) %>
```

----

## Installation [1001_1500/000339_interagent_heroics.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000339_interagent_heroics.md)

Add this line to your application's Gemfile:

    gem 'heroics'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install heroics

----

## Installation [1001_1500/000339_gregnavis_active_record_doctor.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000339_gregnavis_active_record_doctor.md)

The preferred installation method is adding `active_record_doctor` to your
`Gemfile`:

```ruby
gem 'active_record_doctor', group: :development
```

Then run:

```bash
bundle install
```

----

## Installation [1001_1500/000337_carrierwaveuploader_carrierwave-mongoid.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000337_carrierwaveuploader_carrierwave-mongoid.md)

Install the latest release:

    gem install carrierwave-mongoid

Require it in your code:

```ruby
require 'carrierwave/mongoid'
```

Or, in Rails you can add it to your Gemfile:

```ruby
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'
```

Note: If using Rails 4, you'll need to make sure `mongoid-grid_fs` is `>= 1.9.0`.
If in doubt, run `bundle update mongoid-grid_fs`

```ruby
gem 'mongoid-grid_fs', github: 'ahoward/mongoid-grid_fs'
```

----

## Installation [1001_1500/000336_jejacks0n_navigasmic.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000336_jejacks0n_navigasmic.md)

Include the gem in your Gemfile and bundle to install the gem.  (Navigasmic requires Ruby 1.9+)

```ruby
gem 'navigasmic'
```

You can also get the initializer by running the install generator.

```bash
rails generate navigasmic:install
```

----

## Installation [1001_1500/000334_soundcloud_soundcloud-ruby.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000334_soundcloud_soundcloud-ruby.md)
```sh
gem install soundcloud
```

----

## Installation [1001_1500/000331_NicosKaralis_pushmeup.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000331_NicosKaralis_pushmeup.md)

    $ gem install pushmeup
    
or add to your ``Gemfile``

    gem 'pushmeup'
    
and install it with

    $ bundle install

----

## Installation [1001_1500/000329_amatsuda_stateful_enum.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000329_amatsuda_stateful_enum.md)

Add this line to your Rails app's Gemfile:

```ruby
gem 'stateful_enum'
```

And bundle.


----

## Installation [1001_1500/000328_ilyakatz_data-migrate.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000328_ilyakatz_data-migrate.md)
Add the gem to your project

    # Gemfile
    gem 'data_migrate'

Then `bundle install` and you are ready to go.

So you know, when you use one of the provide rake tasks, a table
called `data_migrations` will be created in your database. This
is to mirror the way the standard `db` rake tasks work.


----

## Installation [1001_1500/000328_r7kamura_autodoc.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000328_r7kamura_autodoc.md)
```ruby
gem "autodoc", group: :test
```

If you want to generate toc_html, you should install [redcarpet gem](https://github.com/vmg/redcarpet) (optional).

```ruby
gem "redcarpet", group: :test
```

----

## Installation [1001_1500/000327_mivok_markdownlint.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000327_mivok_markdownlint.md)

Markdownlint is written in ruby and is distributed as a rubygem. As long as
you have a relatively up to date ruby on your system, markdownlint will be
simple to install and use. You have 2 options to install it:

To install from rubygems, run:

    gem install mdl

To install the latest development version from github:

    git clone https://github.com/markdownlint/markdownlint
    cd markdownlint
    rake install


Note that you will need [rake](https://github.com/ruby/rake)
(`gem install rake`) and [bundler](https://github.com/bundler/bundler)
(`gem install bundler`) in order to build from source.

----

## Installation [1001_1500/000327_ClearFit_redtape.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000327_ClearFit_redtape.md)

Add this line to your application's Gemfile:

    gem 'redtape'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install redtape

----

## Installation [1001_1500/000327_maxim_skeptick.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000327_maxim_skeptick.md)

Add this line to your application's Gemfile:

    gem 'skeptick'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install skeptick

----

## Installation [1001_1500/000326_alindeman_zonebie.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000326_alindeman_zonebie.md)

If using Bundler (recommended), add to Gemfile:

````ruby
gem 'zonebie'
````

----

## Installation [1001_1500/000325_aderyabin_sniffer.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000325_aderyabin_sniffer.md)

Add this line to your application's Gemfile:

```ruby
gem 'sniffer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sniffer

----

## Installation [1001_1500/000325_discourse_mini_racer.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000325_discourse_mini_racer.md)

Add this line to your application's Gemfile:

```ruby
gem 'mini_racer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mini_racer


**Note** using v8.h and compiling MiniRacer requires a C++11 standard compiler, more specifically clang 3.5 (or later) or gcc 4.8 (or later).


----

## Installation [1001_1500/000324_phallstrom_slackistrano.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000324_phallstrom_slackistrano.md)

1. Add this line to your application's Gemfile:

   ```ruby
   gem 'slackistrano'
   ```

2. Execute:

   ```
   $ bundle
   ```

3. Require the library in your application's Capfile:

   ```ruby
   require 'slackistrano/capistrano'
   ```

----

## Installation [1001_1500/000324_papertrail_papertrail-cli.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000324_papertrail_papertrail-cli.md)

Install the gem (details on [RubyGems]), which includes a binary called
"papertrail":

    $ [sudo] gem install papertrail


----

## Installation [1001_1500/000323_digitalocean_droplet_kit.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000323_digitalocean_droplet_kit.md)

Add this line to your application's Gemfile:

    gem 'droplet_kit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install droplet_kit

----

## Installation [1001_1500/000321_continuum_active_importer.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000321_continuum_active_importer.md)

Add this line to your application's Gemfile:

    gem 'active_importer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_importer

----

## Installation [1001_1500/000320_svenfuchs_gem-release.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000320_svenfuchs_gem-release.md)

The gem provides a rubygems plugin, so it's just:

```
gem install gem-release
```


# Configuration

Defaults for all options can be specified in a config file at either one of
these locations:

* `~/.gem_release/config.yml`
* `~/.gem_release.yml`
* `./.gem_release/config.yml`
* `./.gem_release.yml`

Config files must be in the [YAML](http://www.yaml.org/) format, and list
options per command. Common options can be set on the root.

For instance, the following entries will set the `quiet` flag for all commands,
and a custom host name with `gem release`:

```yaml
quiet: true

release:
  host: https://example.com
```

Defaults for all options also can be specified as environment variables, for
example `GEM_RELEASE_PRETEND=true`.

Defaults specified in config files and environment variables can be overridden
as command line options when issuing the respective `gem` command.

Only the first config file found in the locations given above will be used, if
any, and defaults from this config file will be merged with both environment
variables and given command line options.


# Conventions

When bootstrapping a new gem:

* A gem name `gem_name` is left untouched when mapped to the path `lib/gem_name`, and the Ruby constant name `GemName`.
* A gem name `gem-name` is mapped to the path `lib/gem/name`, and the Ruby constant name `Gem::Name`

When bumping the version of an existing gem `gem-name` the following locations are checked:

* `lib/gem/name/version.rb`
* `lib/gem-name/version.rb`

# Piping

Output depends on a `tty` being available or not. I.e. when run as an
individual command colorized human readable output will be printed (see the
Demo screencast above). When attached to a pipe then output is kept simple and
parsable.

E.g.:

```
$ gem bump --pretend | cat
bump gem-release 1.0.0 1.0.1
git_add lib/gem/release/version.rb
git_commit "Bump gem-release to 1.0.1"
```

This is useful, for example, for grabbing the next version number:

```
$ gem bump --pretend --no-commit | awk '{ print $4 }'
1.0.1
```


# Reference

The gem `gem-release` adds the following commands to the rubygems `gem` command:

  * [gem bootstrap](#gem-bootstrap) - Scaffolds a new gem from template files.
  * [gem bump](#gem-bump) - Bumps one, several, or all gems in this directory.
  * [gem gemspec](#gem-gemspec) - Generates a gemspec.
  * [gem release](#gem-release) - Releases one or all gems in this directory.
  * [gem tag](#gem-tag) - Tags the HEAD commit with the gem's current version.

----

## Installation [1001_1500/000320_dtaniwaki_rack-dev-mark.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000320_dtaniwaki_rack-dev-mark.md)

Add the rack-dev-mark gem to your Gemfile.

```ruby
gem "rack-dev-mark"
```

And run `bundle install`.

----

## Installation [1001_1500/000320_nesquena_dante.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000320_nesquena_dante.md)

Add to your Gemfile:

```ruby
# Gemfile

gem "dante"
```

or to your gemspec:

```ruby
# mygem.gemspec

Gem::Specification.new do |s|
  s.add_dependency "dante"
end
```

----

## Installation  [1001_1500/000320_thumblemonks_riot.markdown](https://github.com/ts-3156/readmes/blob/master/1001_1500/000320_thumblemonks_riot.markdown)

    gem install riot

----

## Installation [1001_1500/000320_boazsegev_iodine.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000320_boazsegev_iodine.md)

To install iodine, simply install the the `iodine` gem:

```bash
$ gem install iodine
```

Iodine is written in C and allows some compile-time customizations, such as:

* `FIO_FORCE_MALLOC` - avoids iodine's custom memory allocator and use `malloc` instead (mostly used when debugging iodine or when using a different memory allocator).

* `FIO_MAX_SOCK_CAPACITY` - limits iodine's maximum client capacity. Defaults to 131,072 clients.

* `HTTP_MAX_HEADER_COUNT` - limits the number of headers the HTTP server will accept before disconnecting a client (security). Defaults to 128 headers (permissive).

* `HTTP_MAX_HEADER_LENGTH` - limits the number of bytes allowed for a single header (pre-allocated memory per connection + security). Defaults to 8Kb per header line (normal).

* `HTTP_BUSY_UNLESS_HAS_FDS` - requires at least X number of free file descriptors (for new database connections, etc') before accepting a new HTTP client.

* `FIO_ENGINE_POLL` - prefer the `poll` system call over `epoll` or `kqueue` (not recommended).

* `FIO_LOG_LENGTH_LIMIT` - sets the limit on iodine's logging messages (uses stack memory, so limits must be reasonable. Defaults to 2048.

These options can be used, for example, like so:

```bash
$ CFLAGS="-DFIO_FORCE_MALLOC=1 -DHTTP_MAX_HEADER_COUNT=64" \
  gem install iodine
```

More possible compile time options can be found in the [facil.io documentation](http://facil.io).

----

## Installation [1001_1500/000319_fotinakis_jsonapi-serializers.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000319_fotinakis_jsonapi-serializers.md)

Add this line to your application's Gemfile:

```ruby
gem 'jsonapi-serializers'
```

Or install directly with `gem install jsonapi-serializers`.

----

## Installation [1001_1500/000319_will-in-wi_letsencrypt-webfaction.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000319_will-in-wi_letsencrypt-webfaction.md)

This utility works on [CentOS 6 and 7 boxes](https://docs.webfaction.com/user-guide/server.html#finding-your-server-s-operating-system). The CentOS 5 systems do not have a new enough OpenSSL to include the algorithms required. You may be able to make this work using rbenv and compiling openssl yourself. A tutorial for CentOS 5 is available here: https://github.com/will-in-wi/letsencrypt-webfaction/wiki/Install-custom-OpenSSL-and-Ruby-on-CentOS-5-host

All places where you need to substitute a value specific to your setup will be denoted with square brackets, e.g. [yourdomain.com]. There are cases where shell variables are used, such as `$HOME`. These should be typed verbatim.

*NOTE: You can install letsencrypt_webfaction using rbenv if you are an advanced Ruby user. Replace the following section with [these instructions](docs/rbenv.md) if you choose to do so.*

Run the following command in an SSH session to install the letsencrypt_webfaction package via the [RubyGems package management site](https://rubygems.org/gems/letsencrypt_webfaction):

```sh
GEM_HOME=$HOME/.letsencrypt_webfaction/gems RUBYLIB=$GEM_HOME/lib gem2.2 install letsencrypt_webfaction
```

Add the following to `~/.bash_profile` (using, for example, an FTP client or your favorite text editor):

```sh
function letsencrypt_webfaction {
    GEM_HOME=$HOME/.letsencrypt_webfaction/gems PATH=$PATH:$GEM_HOME/bin RUBYLIB=$GEM_HOME/lib ruby2.2 $HOME/.letsencrypt_webfaction/gems/bin/letsencrypt_webfaction $*
}
```
This will simplify the running of the LetsEncrypt WebFaction command, by setting some variables in advance.

After saving `~/.bash_profile`, run the command `source $HOME/.bash_profile` to apply the new settings.

Run `letsencrypt_webfaction init` to generate a registration cert and the config file. Open the config file `nano -w ~/letsencrypt_webfaction.toml` and edit to reflect your configuration.

Now, you are ready to run `letsencrypt_webfaction run` from your SSH session to get certificates. Note that by default the config file `letsencrypt_webfaction.toml` is pointed at the LetsEncrypt staging endpoint (the line that says: `endpoint = "https://acme-staging.api.letsencrypt.org/"`); meaning you will only get "test" certificates installed while using the stage endpoint. To issue live certificates you will need to comment out default line, and uncomment the production endpoint line (the line that says: `endpoint = "https://acme-v01.api.letsencrypt.org/" # Production`).

When you have tested with staging, you can remove the certificate from WebFaction control panel (make sure no webapps are using it first) and re-run with the production endpoint.

After you run this command, you will see new certificates in the webfaction admin panel (under `Domains / Websites`, then `SSL certificates`), with the names you have provided (ie, the `name = ` variable in the `letsencrypt_webfaction.toml` config file). You need to change your application to point to this certificate after the certificate has been issued. This change will take some time for Webfaction to deploy before you will be able to successfully connect with the `https` version of your site. After a short period, Webfaction will copy your generated certficates into the directory `/home/yourusername/certificates/`. Future runs of this command will update the existing certificate entry and not require a change in the admin panel.

Once you can connect to your site via `https` you might have broken images and CSS files. Such "[mixed content](https://support.cloudflare.com/hc/en-us/articles/200170476-How-do-I-fix-the-SSL-Mixed-Content-Error-Message-)" will need to be fixed: make sure any references to embeded content from your site uses `https` rather than `http`.

Finally, if you would like the `http` site to redirect to your `https`, follow the [Webfaction guidance](https://docs.webfaction.com/software/static.html#redirecting-from-http-to-https).

----

## Installation [1001_1500/000318_palkan_logidze.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000318_palkan_logidze.md)

Add Logidze to your application's Gemfile:

```ruby
gem 'logidze'
```

Install required DB extensions and create trigger function:

```sh
rails generate logidze:install
```

This creates migration for adding trigger function and enabling hstore extension.

Run migrations:

```sh
rake db:migrate
```

**NOTE:** you **must** use SQL schema format since Logidze uses DB functions and triggers:

```ruby
# application.rb
config.active_record.schema_format = :sql
```

3. Add log column and triggers to the model:

```sh
rails generate logidze:model Post
rake db:migrate
```

This also adds `has_logidze` line to your model, which adds methods for working with logs.

You can provide `limit` option to `generate` to limit the size of the log (by default it's unlimited):

```sh
rails generate logidze:model Post --limit=10
```

To backfill table data (i.e. create initial snapshots) add `backfill` option:

```sh
rails generate logidze:model Post --backfill
```

You can log only particular columns changes. There are mutually exclusive `blacklist` and `whitelist` options for this:

```sh
# track all columns, except `created_at` and `active`
rails generate logidze:model Post --blacklist=created_at active
# track only `title` and `body` columns
rails generate logidze:model Post --whitelist=title body
```

By default, Logidze tries to infer the path to the model file from the model name and may fail, for example, if you have unconventional project structure. In that case you should specify the path explicitly:

```sh
rails generate logidze:model Post --path "app/models/custom/post.rb"
```

By default, Logidze tries to get a timestamp for a version from record's `updated_at` field whenever appropriate. If
your model does not have that column, Logidze will gracefully fall back to `statement_timestamp()`.
To change the column name or disable this feature completely, you can use the `timestamp_column` option:

```sh
# will try to get the timestamp value from `time` column
rails generate logidze:model Post --timestamp_column time
# will always set version timestamp to `statement_timestamp()`
rails generate logidze:model Post --timestamp_column nil # "null" and "false" will also work
```

If you want to update Logidze settings for the model, run migration with `--update` flag:

```sh
rails generate logidze:model Post --update --whitelist=title body rating
```

Logidze also supports associations versioning. It is experimental feature, and disabled by default. You can learn more
in the [wiki](https://github.com/palkan/logidze/wiki/Associations-versioning).

----

## Installation [1001_1500/000318_rubocop-rspec_rubocop-rspec.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000318_rubocop-rspec_rubocop-rspec.md)

Just install the `rubocop-rspec` gem

```bash
gem install rubocop-rspec
```

or if you use bundler put this in your `Gemfile`

```
gem 'rubocop-rspec'
```

----

## Installation [1001_1500/000318_infinitered_rmq.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000318_infinitered_rmq.md)

RMQ **requires no other gems**. If you use stuff like **scale** and certain animations it will require some frameworks (like QuartzCore or CoreGraphics)

- `gem install ruby_motion_query`

If you use rbenv

- `rbenv rehash`

Require it

- `require 'ruby_motion_query'`

or add it to your `Gemfile`:

- `gem 'ruby_motion_query'`

for **edge RMQ**, add this to your `Gemfile`:

- `gem 'ruby_motion_query', :git => 'git@github.com:infinitered/rmq.git'`


<br />

----

## Installation [1001_1500/000318_chadrem_market_bot.markdown](https://github.com/ts-3156/readmes/blob/master/1001_1500/000318_chadrem_market_bot.markdown)

Add this line to your application's Gemfile to use the latest stable version:

    gem 'market_bot'

And then execute:

    $ bundle

----

## Installation [1001_1500/000317_jasl_wx_pay.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000317_jasl_wx_pay.md)

Add this line to your Gemfile:

```ruby
gem 'wx_pay'
```

or development version

```ruby
gem 'wx_pay', :github => 'jasl/wx_pay'
```

And then execute:

```sh
$ bundle
```

----

## Installation [1001_1500/000316_saturnflyer_casting.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000316_saturnflyer_casting.md)

If you are using Bundler, add this line to your application's Gemfile:

```ruby
gem 'casting'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install casting

----

## Installation [1001_1500/000315_inossidabile_wash_out.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000315_inossidabile_wash_out.md)

In your Gemfile, add this line:

    gem 'wash_out'

Please read [release details](https://github.com/inossidabile/wash_out/releases) if you are upgrading. We break backward compatibility between large ticks but you can expect it to be specified at release notes.

----

## Installation [1001_1500/000315_rudionrails_yell.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000315_rudionrails_yell.md)

System wide:

```console
gem install yell
```

Or in your Gemfile:

```ruby
gem "yell"
```


----

## Installation [1001_1500/000315_exAspArk_batch-loader.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000315_exAspArk_batch-loader.md)

Add this line to your application's Gemfile:

```ruby
gem 'batch-loader'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install batch-loader

----

## Installation [1001_1500/000314_igrigorik_vimgolf.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000314_igrigorik_vimgolf.md)

You need :
- ruby
- gem bundler
- mongodb
- Seed database

----

## Installation [1001_1500/000314_rwz_mock5.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000314_rwz_mock5.md)

This gem could be useful for testing, and maybe development purposes.
Add it to the relevant groups in your Gemfile.

```ruby
gem "mock5", groups: [:test, :development]
```

and run `bundle`.

----

## Installation [1001_1500/000313_symengine_symengine.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000313_symengine_symengine.md)

----

## Installation [1001_1500/000313_jarmo_require_all.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000313_jarmo_require_all.md)

Add this line to your application's Gemfile:

    gem 'require_all'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install require_all

----

## Installation [1001_1500/000311_xdite_bootstrappers.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000311_xdite_bootstrappers.md)

First install the bootstrappers gem:

    gem install bootstrappers

----

## Installation [1001_1500/000311_tom-lord_regexp-examples.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000311_tom-lord_regexp-examples.md)

Add this line to your application's Gemfile:

```ruby
gem 'regexp-examples'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install regexp-examples

----

## Installation [1001_1500/000311_iridakos_table_flipper.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000311_iridakos_table_flipper.md)

Add this line to your application's Gemfile:

```ruby
gem 'table_flipper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install table_flipper

Then try to break your code, ta da:

~~~~~ ruby
NoMethodError: (╯°□°）╯︵ ┻━┻ : undefined method `do_something' for nil:NilClass
~~~~~

![Screenshot](http://i.imgur.com/x2RGyZS.jpg)


![Screenshot](http://i.imgur.com/xRLGT50.png)

----

## Installation [1001_1500/000311_alaingilbert_Turntable-API.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000311_alaingilbert_Turntable-API.md)
    npm install ttapi

----

## Installation [1001_1500/000310_guard_guard-jasmine.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000310_guard_guard-jasmine.md)

----

## Installation [1001_1500/000310_Sandglaz_maktoub.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000310_Sandglaz_maktoub.md)

  ```ruby
  # Add this line to your Gemfile
  gem 'maktoub'
  ```

Then `bundle install`

----

## Installation [1001_1500/000310_gmailgem_gmail.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000310_gmailgem_gmail.md)

You can install it easy using rubygems:

    sudo gem install gmail
    
Or install it manually:

    git clone git://github.com/gmailgem/gmail.git
    cd gmail
    rake install

gmail gem has the following dependencies (with Bundler all will be installed automatically):

* mail
* gmail_xoauth

----

## Installation. [1001_1500/000309_puffer_puffer.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000309_puffer_puffer.md)

You can install puffer as a gem:

`gem install puffer`

Or in Gemfile:

`gem "puffer"`

----

## Installation [1001_1500/000309_paulsamuels_SBConstants.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000309_paulsamuels_SBConstants.md)

```sh
$ gem install sbconstants
```

----

## Installation [1001_1500/000309_meew0_discordrb.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000309_meew0_discordrb.md)

----

## Installation [1001_1500/000307_mattmueller_foursquare2.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000307_mattmueller_foursquare2.md)

    sudo gem install foursquare2

----

## Installation [1001_1500/000306_jekyll_jekyll-compose.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000306_jekyll_jekyll-compose.md)

Add this line to your application's Gemfile:

    gem 'jekyll-compose', group: [:jekyll_plugins]

And then execute:

    $ bundle

----

## Installation [1001_1500/000305_platanus_activeadmin_addons.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000305_platanus_activeadmin_addons.md)

Add this line to your application's Gemfile:

```ruby
gem 'activeadmin_addons'
```

And then execute:

```bash
$ bundle
```

After that, run the generator:

```bash
$ rails g activeadmin_addons:install
```

Check [here](docs/install_generator.md) to see more information about this generator.

----

## Installation [1001_1500/000305_namick_obfuscate_id.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000305_namick_obfuscate_id.md)

Add the gem to your Gemfile.

    gem "obfuscate_id"

Run bundler.

    bundle install

----

## Installation [1001_1500/000304_apiqcms_kms.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000304_apiqcms_kms.md)

1. Add to Gemfile

        gem "kms"
        # or for edge version:
        gem "kms", github: "webgradus/kms"

2. Setup database.yml (only PostgreSQL 9.2+ supported)

3. Run generator:

        rails g kms:install

4. Copy migrations:

        rails kms:install:migrations

5. Migrate:

        rails db:migrate

6. Set locale in your main app.

7. Precompile assets (if it will be production app):

        RAILS_ENV=production bundle exec rails assets:precompile

8. Run it using your favorite webserver - unicorn, puma, thin
9. Open your browser at **http://localhost:3000/kms** and sign up first admin user.

----

## Installation [1001_1500/000303_kamui_retriable.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000303_kamui_retriable.md)

Via command line:

```ruby
gem install retriable
```

In your ruby script:

```ruby
require 'retriable'
```

In your Gemfile:

```ruby
gem 'retriable', '~> 3.1'
```

----

## Installation [1001_1500/000303_railsgsoc_actionform.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000303_railsgsoc_actionform.md)

Add this line to your `Gemfile`:

```ruby
gem 'actionform'
```

----

## Installation [1001_1500/000303_adomokos_light-service.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000303_adomokos_light-service.md)
Add this line to your application's Gemfile:

    gem 'light-service'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install light-service

----

## Installation [1001_1500/000300_middleman_middleman-blog.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000300_middleman_middleman-blog.md)

If you're just getting started, install the `middleman` gem and generate a new
project:

```
gem install middleman
middleman init MY_PROJECT --template=blog
```

If you already have a Middleman project: Add `gem "middleman-blog"` to your
`Gemfile` and run `bundle install`

----

## Installation [1001_1500/000300_jimmycuadra_to_lang.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000300_jimmycuadra_to_lang.md)

Simply run:

``` bash
gem install to_lang
```

----

## Installation [1001_1500/000300_solnic_transproc.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000300_solnic_transproc.md)

Add this line to your application's Gemfile:

```ruby
gem 'transproc'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install transproc

----

## Installation [1001_1500/000299_honeybadger-io_incoming.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000299_honeybadger-io_incoming.md)

1. Add Incoming! to your Gemfile and run `bundle install`:

    ```ruby
    gem 'incoming'
    ```

2. Create a new class to receive emails (see examples below)

3. Implement an HTTP endpoint to receive HTTP post hooks, and pass the
   request to your receiver. (see examples below)

----

## Installation [1001_1500/000298_mwunsch_tumblr.md](https://github.com/ts-3156/readmes/blob/master/1001_1500/000298_mwunsch_tumblr.md)

If you're on a Mac using [Homebrew](http://mxcl.github.com/homebrew/) and are just interested in the cli:

		brew install https://raw.github.com/mwunsch/tumblr/master/share/tumblr-rb.rb

Or with gem:

		gem install tumblr-rb

Alternatively, you can clone the repo, and run `rake install` -- this will build the gem, place it in the `pkg` directory, and install the gem to your system. You should then be able to `require 'tumblr'` and/or run `tumblr` from the command line.

----

## Installation [1501_2000/000295_airbnb_hammerspace.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000295_airbnb_hammerspace.md)

----

## Installation [1501_2000/000294_TrevorS_bootstrap3-datetimepicker-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000294_TrevorS_bootstrap3-datetimepicker-rails.md)

Add these lines to your application's Gemfile:
```ruby
gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.47'
```

And then execute:
```bash
$ bundle
```

Or install it yourself:
```bash
$ gem install momentjs-rails
$ gem install bootstrap3-datetimepicker-rails
```

To start using the bootstrap-datetimepicker plugin in your Rails application, enable it via the asset pipeline.

If your server is running, you will need to **restart Rails** before using the gem.

Add the following to your JavaScript manifest file (`application.js`):
```js
//= require moment
//= require bootstrap-datetimepicker
```

If you want to include a localization, also add:
```js
//= require moment/<locale>
```

Add the following to your style sheet file:

If you are using SCSS, modify your `application.css.scss`
```scss
// import bootstrap-sprockets before bootstrap if using bootstrap >= 3.2
@import 'bootstrap-sprockets';
@import 'bootstrap';
@import 'bootstrap-datetimepicker';
```

If you're using plain CSS, modify your `application.css`
```css
*= require bootstrap
*= require bootstrap-datetimepicker
```

----

## Installation [1501_2000/000292_jamis_castaway.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000292_jamis_castaway.md)

Castaway depends on a few external tools to do the heavy lifting. You'll need to
make sure you have the following tools installed:

* [ImageMagick](https://www.imagemagick.org/script/binary-releases.php) is used
  to render video frames and special effects. _(Tested with version 6.9.5)_
* [Sox](https://sourceforge.net/projects/sox/files/sox/) is used to edit and mix
  audio. _(Tested with version 14.4.2)_
* [FFmpeg](https://ffmpeg.org/download.html) is used to combine the frames and
  audio into a single video file. _(Tested with version 3.2.2)_

Once you've met those requirements, installing Castaway itself is simple:

    $ gem install castaway

And you're good to go!


----

## Installation [1501_2000/000291_alchaplinsky_polymer-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000291_alchaplinsky_polymer-rails.md)

Add this line to your application's Gemfile:

    gem 'polymer-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install polymer-rails

----

## Installation [1501_2000/000291_meldium_breach-mitigation-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000291_meldium_breach-mitigation-rails.md)

Add this line to your Rails Gemfile:

    gem 'breach-mitigation-rails'

And then execute:

    $ bundle

The length-hiding can be disabled by doing:

    Rails.application.config.exclude_breach_length_hiding = true

For most Rails apps, that should be enough, but read on for the gory
details...

----

## Installation [1501_2000/000289_NoRedInk_rspec-retry.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000289_NoRedInk_rspec-retry.md)

Add this line to your application's Gemfile:

```ruby
gem 'rspec-retry', group: :test # Unlike rspec, this doesn't need to be included in development group
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-retry

require in ``spec_helper.rb``

```ruby
# spec/spec_helper.rb
require 'rspec/retry'

RSpec.configure do |config|
  # show retry status in spec process
  config.verbose_retry = true
  # show exception that triggers a retry if verbose_retry is set to true
  config.display_try_failure_messages = true

  # run retry only on features
  config.around :each, :js do |ex|
    ex.run_with_retry retry: 3
  end

  # callback to be run between retries  
  config.retry_callback = proc do |ex|
    # run some additional clean up task - can be filtered by example metadata
    if ex.metadata[:js]
      Capybara.reset!     
    end
  end
end
```

----

## Installation [1501_2000/000287_davidesantangelo_webinspector.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000287_davidesantangelo_webinspector.md)

Add this line to your application's Gemfile:

```ruby
gem 'webinspector'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install webinspector

----

## Installation [1501_2000/000287_lassebunk_dish.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000287_lassebunk_dish.md)

Add this line to your application's *Gemfile*:

    gem "dish"

Then run:

    $ bundle

Or install it yourself:

    $ gem install dish

If you want a `to_dish` helper method added to your Hash and Array objects, you can require `dish/ext` in your *Gemfile*:

    gem "dish", require: "dish/ext"

----

## Installation [1501_2000/000287_franckverrot_activevalidators.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000287_franckverrot_activevalidators.md)

    gem install activevalidators

This projects follows [Semantic Versioning a.k.a SemVer](http://semver.org). If you use Bundler, you can use the stabby specifier `~>` safely.

What it means is that you should specify an ActiveValidators version like this :

```ruby
gem 'activevalidators', '~> 5.0.0' # <-- mind the patch version
```

Once you have `require`'d the gem, you will have to activate the validators you
want to use as ActiveValidators doesn't force you to use them all :

```ruby
# Activate all the validators
ActiveValidators.activate(:all)

# Activate only the email and slug validators
ActiveValidators.activate(:email, :slug)

# Activate only the phone
ActiveValidators.activate(:phone)
```

`ActiveValidators.activate` can be called as many times as one wants. It's only
a syntactic sugar on top a normal Ruby `require`.

In a standard Ruby on Rails application, this line goes either in an initializer
(`config/initializers/active_validators_activation.rb` for example), or directly
within `config/application` right inside your `MyApp::Application` class definition.

----

## Installation [1501_2000/000286_jenseng_hair_trigger.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000286_jenseng_hair_trigger.md)

If you are using Rails 3 or beyond, just add `gem 'hairtrigger'` to your
Gemfile. For Rails 2, it's [slightly more involved](RAILS2.md)

----

## Installation [1501_2000/000286_SaitoWu_linner.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000286_SaitoWu_linner.md)

    $ gem install linner

----

## Installation [1501_2000/000286_tylerhunt_rack-canonical-host.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000286_tylerhunt_rack-canonical-host.md)

Add this line to your application’s `Gemfile`:

```ruby
gem 'rack-canonical-host'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-canonical-host


----

## Installation [1501_2000/000285_weppos_tabs_on_rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000285_weppos_tabs_on_rails.md)

Add this line to your application's `Gemfile`:

    gem "tabs_on_rails"

And then execute `bundle` to install the dependencies:

    $ bundle

Use [Bundler](http://bundler.io/) and the `:git` option if you want to grab the latest version from the Git repository.


----

## Installation [1501_2000/000285_roidrage_redis-session-store.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000285_roidrage_redis-session-store.md)

For Rails 3+, adding this to your `Gemfile` will do the trick.

``` ruby
gem 'redis-session-store'
```

----

## Installation [1501_2000/000285_sorentwo_carrierwave-aws.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000285_sorentwo_carrierwave-aws.md)

Add this line to your application's Gemfile:

```ruby
gem 'carrierwave-aws'
```

Run the bundle command from your shell to install it:
```bash
bundle install
```

----

## Installation [1501_2000/000284_inossidabile_protector.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000284_inossidabile_protector.md)

Add this line to your application's Gemfile:

    gem 'protector'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install protector

As long as you load Protector after an ORM library it is supposed to activate itself automatically. Otherwise you can enable required adapter manually:

```ruby
Protector::Adapters::ActiveRecord.activate!
```

Where "ActiveRecord" is the adapter you are about to use. It can be "Sequel", "DataMapper", "Mongoid".

----

## Installation [1501_2000/000284_harrystech_seed_migration.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000284_harrystech_seed_migration.md)

Add `gem 'seed_migration'` to your `Gemfile`:

```ruby
gem 'seed_migration'
```

----

## Installation [1501_2000/000283_meltingice_flickr-store.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000283_meltingice_flickr-store.md)

```
$ gem install flickr-store
```

----

## Installation [1501_2000/000283_janko-m_down.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000283_janko-m_down.md)

```rb
gem "down", "~> 4.4"
```

----

## Installation [1501_2000/000283_igor-alexandrov_wisepdf.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000283_igor-alexandrov_wisepdf.md)

First, be sure to install [wkhtmltopdf](http://code.google.com/p/wkhtmltopdf/).
Note that versions before 0.9.0 [have problems](http://code.google.com/p/wkhtmltopdf/issues/detail?id=82&q=vodnik) on some machines with reading/writing to streams.
This plugin relies on streams to communicate with wkhtmltopdf.

More information about [wkhtmltopdf](http://code.google.com/p/wkhtmltopdf/) could be found [here](http://madalgo.au.dk/~jakobt/wkhtmltoxdoc/wkhtmltopdf_0.10.0_rc2-doc.html).

Add this to your Gemfile:

    gem 'wisepdf'

if you don't already have wkhtmltopdf installed on your machine you can get up and running quickly by adding this to your Gemfile:

    gem 'wkhtmltopdf-binary'

then do:

    bundle install

----

## Installation [1501_2000/000282_adjust_shrimp.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000282_adjust_shrimp.md)

Add this line to your application's Gemfile:

    gem 'shrimp'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shrimp


----

## Installation [1501_2000/000281_weavenet_trello_cli.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000281_weavenet_trello_cli.md)

Install the trello_cli gem

    gem install trello_cli

Or install using docker via the instructions provided by **@jamesmstone**.

    docker pull jamesmstone/trello

----

## Installation [1501_2000/000281_tabulapdf_tabula-extractor.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000281_tabulapdf_tabula-extractor.md)

`tabula-extractor` only works with JRuby 1.7 or newer. [Install JRuby](http://jruby.org/getting-started) and run

``
jruby -S gem install tabula-extractor
``


----

## Installation [1501_2000/000281_andyw8_do_by.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000281_andyw8_do_by.md)

Add this line to your application's Gemfile:

    gem 'do_by', github: 'andyw8/do_by'

And then execute:

    $ bundle

----

## Installation [1501_2000/000281_n-rodriguez_ajax-datatables-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000281_n-rodriguez_ajax-datatables-rails.md)

Add these lines to your application's Gemfile:

```ruby
gem 'ajax-datatables-rails'
```

And then execute:

```sh
$ bundle install
```

We assume here that you have already installed [jQuery DataTables](https://datatables.net/).

You can install jQuery DataTables :

* with the [`jquery-datatables`](https://github.com/mkhairi/jquery-datatables) gem
* by adding the assets manually (in `vendor/assets`)
* with [Rails webpacker gem](https://github.com/rails/webpacker) (see [here](/doc/webpack.md) for more infos)


----

## Installation [1501_2000/000281_assembler_attachinary.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000281_assembler_attachinary.md)

First, make sure that you have [cloudinary gem](https://github.com/cloudinary/cloudinary_gem) installed and properly configured.

Add following line to your `Gemfile`:

    gem 'attachinary'

Specify which ORM you wish to use by adding following line to your `application.rb` file (or custom initializer):

	require "attachinary/orm/YOUR_ORM" # active_record or mongoid

If you're using `ActiveRecord` ORM, then run following lines to generate required table:

	rake attachinary:install:migrations
	rake db:migrate

Next, add following line in your `routes.rb` file:

	mount Attachinary::Engine => "/attachinary"

It will generate '/attachinary/cors' which will be used for iframe file transfers (for unsupported browsers).

Finally, make sure that you have following line in head section of your application layout file:

	<%= cloudinary_js_config %>



----

## Installation [1501_2000/000281_samvincent_rqrcode-rails3.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000281_samvincent_rqrcode-rails3.md)

Add the following to your `Gemfile`.

    gem 'rqrcode-rails3'

If you want to use the PNG, JPEG or GIF format, you will have to have **ImageMagick** installed on your system.
You will also want to add the **mini_magick** gem to your application's `Gemfile`.

    gem 'mini_magick'

----

## Installation [1501_2000/000281_SamSaffron_flamegraph.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000281_SamSaffron_flamegraph.md)

Add this line to your application's Gemfile:

    gem 'flamegraph'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flamegraph

NOTE: For ruby 2.1+ you'll need to install a [stackprof](https://github.com/tmm1/stackprof) gem:

    $ gem install stackprof
    
----

## Installation [1501_2000/000279_jellymann_mittsu.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000279_jellymann_mittsu.md)

Install the prerequisites:

Mittsu depends on Ruby 2.x, OpenGL 3.3+, and GLFW 3.1.x

```bash
# OSX
$ brew install glfw3

# Ubuntu
$ sudo apt-get install libglfw3
```

**NOTE:** On Windows, you will have to manually specify the glfw3.dll path in an environment variable
(you can download it [here](http://www.glfw.org/download.html))
```bash
> set MITTSU_LIBGLFW_PATH=C:\path\to\glfw3.dll
> ruby your_awesome_mittsu_app.rb
```

Add this line to your application's Gemfile:

```ruby
gem 'mittsu'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mittsu

----

## Installation [1501_2000/000278_Genki-S_ttnt.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000278_Genki-S_ttnt.md)

Add this line to your application's Gemfile:

```ruby
gem 'ttnt'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ttnt

----

## Installation [1501_2000/000278_Intrepidd_working_hours.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000278_Intrepidd_working_hours.md)

Gemfile:

```ruby
gem 'working_hours'
```

----

## Installation [1501_2000/000277_simonc_memfs.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000277_simonc_memfs.md)

Add this line to your application's Gemfile:

    gem 'memfs'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install memfs

----

## Installation [1501_2000/000277_laserlemon_periscope.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000277_laserlemon_periscope.md)

Periscope sits on top of your favorite ORM. Currently, the following ORMs are supported through individual gems extending Periscope:

* Active Record ([periscope-activerecord](https://rubygems.org/gems/periscope-activerecord))
* MongoMapper ([periscope-mongo_mapper](https://rubygems.org/gems/periscope-mongo_mapper))
* Mongoid ([periscope-mongoid](https://rubygems.org/gems/periscope-mongoid))
* DataMapper ([periscope-data_mapper](https://rubygems.org/gems/periscope-data_mapper))

Simply add the gem to your bundle and you're off!

----

## Installation [1501_2000/000277_rossta_serviceworker-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000277_rossta_serviceworker-rails.md)

Add this line to your application's Gemfile:

```ruby
gem 'serviceworker-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install serviceworker-rails

To set up your Rails project for use with a Service Worker, you either use the
Rails generator and edit the generated files as needed, or you can follow the
manual installation steps.

----

## Installation [1501_2000/000276_unixcharles_acme-client.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000276_unixcharles_acme-client.md)

Via RubyGems:

    $ gem install acme-client

Or add it to a Gemfile:

```ruby
gem 'acme-client'
```

----

## Installation [1501_2000/000275_thoughtbot_proteus.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000275_thoughtbot_proteus.md)

1. Install the Proteus gem using the [RubyGems](https://rubygems.org) package manager:

  ```bash
  gem install proteus-kits
  ```

2. Then kick off a new project with the kit you want to use (i.e. Middleman):

  ```bash
  proteus new middleman your-project-name
  ```

----

## Installation [1501_2000/000275_github_rubocop-github.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000275_github_rubocop-github.md)

**Gemfile**

``` ruby
gem "rubocop-github"
```

**.rubocop.yml**

``` yaml
inherit_gem:
  rubocop-github:
    - config/default.yml
    - config/rails.yml
```

----

## Installation [1501_2000/000275_ko1_gc_tracer.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000275_ko1_gc_tracer.md)

Add this line to your application's Gemfile:

    gem 'gc_tracer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gc_tracer

----

## Installation [1501_2000/000274_ankane_hightop.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000274_ankane_hightop.md)

Add this line to your application’s Gemfile:

```ruby
gem 'hightop'
```

----

## Installation ## [1501_2000/000274_DavyJonesLocker_capybara-email.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000274_DavyJonesLocker_capybara-email.md)

Add this line to your application's Gemfile:

```ruby
gem 'capybara-email'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capybara-email

----

## Installation [1501_2000/000273_vmware_rbvmomi.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000273_vmware_rbvmomi.md)

    gem install rbvmomi

----

## Installation [1501_2000/000271_tpitale_staccato.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000271_tpitale_staccato.md)

Add this line to your application's Gemfile:

    gem 'staccato'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install staccato

----

## Installation [1501_2000/000270_chrisbranson_ruby_identicon.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000270_chrisbranson_ruby_identicon.md)

Add this line to your application's Gemfile:

    gem 'ruby_identicon'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby_identicon

----

## Installation [1501_2000/000270_ankane_multiverse.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000270_ankane_multiverse.md)

Add this line to your application’s Gemfile:

```ruby
gem 'multiverse'
```

----

## Installation [1501_2000/000270_codenize-tools_roadworker.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000270_codenize-tools_roadworker.md)

Add this line to your application's Gemfile:

    gem 'roadworker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install roadworker

----

## Installation [1501_2000/000270_ismasan_oat.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000270_ismasan_oat.md)

Add this line to your application's Gemfile:

    gem 'oat'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install oat

----

## Installation [1501_2000/000269_cantino_reckon.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000269_cantino_reckon.md)

Assuming you have Ruby and [Rubygems](http://rubygems.org/pages/download) installed on your system, simply run

    (sudo) gem install reckon

----

## Installation [1501_2000/000269_AgilionApps_classy_enum.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000269_AgilionApps_classy_enum.md)

The gem is hosted at [rubygems.org](https://rubygems.org/gems/classy_enum)

Despite [RailsGuides](http://guides.rubyonrails.org/configuring.html#rails-general-configuration)
claiming that all directories under app will be autoloaded,
I've had [reports](https://github.com/beerlington/classy_enum/issues/50)
of this not being the case with newer versions of Ruby and Rails.

You may need to add the enums path to **config/application.rb**:

```ruby
# Make sure classy_enum enums get loaded
config.autoload_paths += %W(#{config.root}/app/enums)
```

----

## Installation [1501_2000/000269_influxdata_influxdb-ruby.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000269_influxdata_influxdb-ruby.md)

```
$ [sudo] gem install influxdb
```

Or add it to your `Gemfile`, and run `bundle install`.

----

## Installation [1501_2000/000269_hstove_rbtc_arbitrage.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000269_hstove_rbtc_arbitrage.md)

Install it yourself as:

    $ gem install rbtc_arbitrage

----

## Installation [1501_2000/000267_protobuf-ruby_beefcake.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000267_protobuf-ruby_beefcake.md)

```shell
gem install beefcake
```

----

## Installation [1501_2000/000266_winston_cactus.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000266_winston_cactus.md)

Install the Cactus gem manually or include it in your Rails Gemfile.

    gem install cactus

Add jQuery to application.js (or any manifest file)

    //= require jquery

Add the Cactus helper in your application layout, just before the `body` closing tag (assuming haml).

    = cactus

Finally, add some CSS specs (written in JavaScript) in `public/cactus_spec`. Files need to end with spec.js.

```javascript
Cactus.expect(".header", "font-size").toEqual("24px");
Cactus.expect("p", "font-size").toEqual("12px");
```
----

## Installation [1501_2000/000264_chrishunt_desktop.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000264_chrishunt_desktop.md)

**desktop** can be installed from [RubyGems](http://rubygems.org/gems/desktop).

```bash
$ gem install desktop
```

----

## Installation [1501_2000/000264_soffes_hue.markdown](https://github.com/ts-3156/readmes/blob/master/1501_2000/000264_soffes_hue.markdown)

Add this line to your application's Gemfile:

``` ruby
gem 'hue'
```

And then execute:

``` shell
$ bundle
```

Or install it yourself as:

``` shell
$ gem install hue
```

----

## Installation [1501_2000/000263_thoughtbot_fake_stripe.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000263_thoughtbot_fake_stripe.md)

----

## Installation [1501_2000/000263_hanami_router.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000263_hanami_router.md)

Add this line to your application's Gemfile:

```ruby
gem 'hanami-router'
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install hanami-router
```

----

## Installation [1501_2000/000263_xcres_xcres.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000263_xcres_xcres.md)

`xcres` is built with Ruby and it will be installable with the default
Ruby available on OS X. You can use a Ruby Version manager, if you know
what you're doing.
Using the default Ruby install will require you to use sudo when
installing gems. (This is only an issue for the duration of the gem
installation, though.)

Install the gem on your machine:

```bash
$ [sudo] gem install xcres
```

Use the automatic integration to add a build phase to your project,
by executing the following command:

**Swift**
```bash
$ xcres install --swift
```

**Objective-C**
```bash
$ xcres install
```


----

## Installation [1501_2000/000262_rzane_baby_squeel.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000262_rzane_baby_squeel.md)

Add this line to your application's Gemfile:

```ruby
gem 'baby_squeel'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install baby_squeel

----

## Installation [1501_2000/000262_applift_fast_attributes.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000262_applift_fast_attributes.md)

Add this line to your application's Gemfile:

    gem 'fast_attributes'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fast_attributes

----

## Installation [1501_2000/000262_alphabetum_pandoc-ruby.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000262_alphabetum_pandoc-ruby.md)

First, make sure to
[install Pandoc](http://johnmacfarlane.net/pandoc/installing.html).

Next, add PandocRuby to your Gemfile

```ruby
gem 'pandoc-ruby'
```

or install PandocRuby from [RubyGems](http://rubygems.org/gems/pandoc-ruby).

```bash
gem install pandoc-ruby
```

----

## Installation [1501_2000/000261_littlebtc_font-awesome-sass-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000261_littlebtc_font-awesome-sass-rails.md)

Add `font-awesome-sass-rails` gem to your `Gemfile`:

    gem 'font-awesome-sass-rails'

Then add the stylesheet to your Rails assets. The simplest way to apply Font Awesome site-wide is to add a `require` statement in `app/assets/stylesheets/application.css`:

    *= require _font-awesome

That's it!

If you want to manage where the stylesheet will be used or just prefer SCSS, you can use `@import` in a SCSS file (e.g. a new file named `libs.css.scss`) to import the stylesheet:

    @import 'font-awesome';

(By default Rails will import all SCSS files in `app/assets/stylesheets`, you can change this behavior by modifying `application.css`.)

You can also use it with the SASS-converted Bootstrap gem, like [bootstrap-sass](https://github.com/thomas-mcdonald/bootstrap-sass) or [anjlab-bootstrap-rails](https://github.com/anjlab/bootstrap-rails). Just require/import font-awesome right after bootstrap.

----

## Installation [1501_2000/000261_clarete_s3sync.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000261_clarete_s3sync.md)

    $ gem install s3sync

----

## Installation [1501_2000/000260_fredjean_middleman-s3_sync.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000260_fredjean_middleman-s3_sync.md)

Add this line to your application's Gemfile:

    gem 'middleman-s3_sync'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install middleman-s3_sync

----

## Installation [1501_2000/000259_ncri_nested_form_fields.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000259_ncri_nested_form_fields.md)

Add this line to your application's Gemfile:

    gem 'nested_form_fields'

And then execute:

    $ bundle

In your application.js file add:

    //= require nested_form_fields

----

## Installation [1501_2000/000259_clemens_delocalize.markdown](https://github.com/ts-3156/readmes/blob/master/1501_2000/000259_clemens_delocalize.markdown)

You can use delocalize as a gem. Using delocalize as a Rails plugin has been discontinued and is no supported. If you want/need to use delocalize as a plugin (I really don't see a reason why you'd want to), consider using the `0-2-stable` branch.

----

## Installation [1501_2000/000257_eric_pilfer.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000257_eric_pilfer.md)

Using with Bundler is as simple as adding `pilfer` to your `Gemfile`.

```ruby
gem 'pilfer', '~> 1.0.0'
```

Or install it locally like any other gem.

```bash
$ gem install pilfer
```

----

## Installation [1501_2000/000257_ucnv_pnglitch.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000257_ucnv_pnglitch.md)

Add this line to your application's Gemfile:

    gem 'pnglitch'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pnglitch

----

## Installation [1501_2000/000257_collectiveidea_delayed_job_active_record.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000257_collectiveidea_delayed_job_active_record.md)

Add the gem to your Gemfile:

    gem 'delayed_job_active_record'

Run `bundle install`.

If you're using Rails, run the generator to create the migration for the
delayed_job table.

    rails g delayed_job:active_record
    rake db:migrate

----

## Installation [1501_2000/000257_ms-ati_docile.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000257_ms-ati_docile.md)

``` bash
$ gem install docile
```

----

## Installation [1501_2000/000257_jamesmartin_inline_svg.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000257_jamesmartin_inline_svg.md)

Add this line to your application's Gemfile:

    gem 'inline_svg'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inline_svg

----

## Installation [1501_2000/000257_LendingHome_zero_downtime_migrations.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000257_LendingHome_zero_downtime_migrations.md)

Simply add this gem to the project `Gemfile`.

```ruby
gem "zero_downtime_migrations"
```

----

## Installation [1501_2000/000256_clayh53_tufte-jekyll.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000256_clayh53_tufte-jekyll.md)

I'm not going to go into great detail here. I am just going to assume that anyone interested in either Jekyll, Edward Tufte's work or Github has some basic skills. I created this with Ruby 2.2.0 and Jekyll 2.5.3. There is absolutely nothing exotic going on here, so you can probably make any recent version of Jekyll work with this setup.

So copy, pull, download a zipfile or whatever and fire it up.

```
cd ~/thatPlaceYouPutIt/tufte-jekyll
jekyll build
jekyll serve -w
```

And then point your browser at localhost:4000/tufte-jekyll

You can also use `jekyll serve -w --baseurl ''` to remove `/tufte-jekyll` from the url and serve your site directly from localhost:4000. This only affects your local preview. See [Setting your baseurl correctly](#setting-your-baseurl-correctly) for more details.

----

## Installation [1501_2000/000256_patriciomacadden_hobbit.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000256_patriciomacadden_hobbit.md)

Add this line to your application's Gemfile:

```ruby
gem 'hobbit'
# or this if you want to use hobbit master
# gem 'hobbit', github: 'patriciomacadden/hobbit'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install hobbit
```

----

## Installation and usage [1501_2000/000256_Macrow_rails_kindeditor.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000256_Macrow_rails_kindeditor.md)

----

## Installation [1501_2000/000255_collectiveidea_tinder.markdown](https://github.com/ts-3156/readmes/blob/master/1501_2000/000255_collectiveidea_tinder.markdown)

    gem install tinder

----

## Installation [1501_2000/000255_amatsuda_html5_validators.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000255_amatsuda_html5_validators.md)

Put this line into your Gemfile:
```ruby
gem 'html5_validators'
```

Then bundle:
```
% bundle
```

----

## Installation ## [1501_2000/000254_DavyJonesLocker_ember-appkit-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000254_DavyJonesLocker_ember-appkit-rails.md)

Include the gem in your `Gemfile`

```ruby
gem 'ember-appkit-rails'
```

You should not need to specify any additional core Ember dependencies.
`EmberAppkitRails` includes all you need to get going.

Run the bootstrap generator to prepare your application:

```
rails g ember:bootstrap
```

Then run your Rails server and visit `http://localhost:3000`. If you see `Welcome to Ember!` then you are good to go!

----

## Installation [1501_2000/000253_ostinelli_apnotic.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000253_ostinelli_apnotic.md)
Just install the gem:

```
$ gem install apnotic
```

Or add it to your Gemfile:

```ruby
gem 'apnotic'
```

----

## Installation [1501_2000/000253_cmu-is-projects_ferry.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000253_cmu-is-projects_ferry.md)
Add this line to your Rails application's Gemfile:
``` ruby
gem 'ferry'
```

And then execute:
``` sh
$ bundle
```

Or install it yourself as:
``` sh
$ gem install ferry
```

To view what Ferry can do for you just run:
``` sh
$ ferry --help
```

----

## Installation [1501_2000/000253_markets_maily.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000253_markets_maily.md)

Add this line to you Gemfile:

```ruby
gem 'maily'
```

Run generator:

```
> rails g maily:install
```

This generator runs some tasks for you:

* Mounts the engine (to `/maily` by default) in your routes
* Adds an initializer (into `config/initializers/maily.rb`) to customize some settings
* Adds a file (into `lib/maily_hooks.rb`) to define hooks

----

## Installation [1501_2000/000252_jgaskins_perpetuity.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000252_jgaskins_perpetuity.md)

Add the following to your Gemfile and run `bundle` to install it.

```ruby
gem 'perpetuity-mongodb', '~> 1.0.0.beta'  # if using MongoDB
gem 'perpetuity-postgres'                  # if using Postgres
```

Note that you do not need to explicitly declare the `perpetuity` gem as a dependency. The database adapter takes care of that for you. It works just like including `rspec-rails` into your Rails app.

----

## Installation [1501_2000/000252_senny_sablon.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000252_senny_sablon.md)

Add this line to your application's Gemfile:

```ruby
gem 'sablon'
```


----

## Installation [1501_2000/000251_kiskolabs_humanizer.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000251_kiskolabs_humanizer.md)

Add `humanizer` to your Gemfile:

```ruby
gem 'humanizer'
```

Bundle and run the generator in terminal:

```sh
bundle
rails g humanizer
```

----

## Installation [1501_2000/000251_EthWorks_ethereum.rb.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000251_EthWorks_ethereum.rb.md)

Before installing gem make sure you meet all [prerequisites](https://github.com/marekkirejczyk/ethereum.rb/blob/master/PREREQUISITES.md), especially that you have:
* compatible ethereum node installed
* compatible solidity compiler installed
* wallet with some ethereum on it

Before you run a program check that the node is running and accounts you want to spend from are unlocked.

To install gem simply add this line to your application's Gemfile:

```ruby
gem 'ethereum.rb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ethereum.rb

----

## Installation [1501_2000/000250_pazdera_catpix.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000250_pazdera_catpix.md)

Use **gem** to install Catpix from [RubyGems](https://rubygems.org/gems/catpix):

    $ gem install catpix

If using [bundler](http://bundler.io/), add this line to your application's
Gemfile:

    gem 'catpix'

And then execute:

    $ bundle

----

## Installation [1501_2000/000249_amw_jpeg_camera.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000249_amw_jpeg_camera.md)

You can load JpegCamera directly on any web page, but if you're writing Rails
3.1 application consider using a gem. In either case you have an option
of loading full library that includes HTML5 implementation with Flash fallback
or HTML5 version only.

----

## Installation [1501_2000/000249_netguru_react_webpack_rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000249_netguru_react_webpack_rails.md)

Add this line to your application's Gemfile:

```ruby
gem 'react_webpack_rails'
```

Execute:

    $ bundle

Then run installation:

    $ rails g react_webpack_rails:install

*read more about [`install  generator`](https://github.com/netguru/react_webpack_rails/blob/master/docs/install_generator.md)*

----

## Installation [1501_2000/000249_ka8725_migration_data.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000249_ka8725_migration_data.md)

Add this line to your application's Gemfile:

    gem 'migration_data'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install migration_data

----

## Installation [1501_2000/000249_mizzy_specinfra.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000249_mizzy_specinfra.md)

Add this line to your application's Gemfile:

    gem 'specinfra'

And then execute:

  ```
  bundle
  ```

Or install it yourself as:

  ```
  gem install specinfra
  ```

----

## Installation [1501_2000/000249_zverok_worldize.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000249_zverok_worldize.md)

It's gem, named `worldize`. Do your usual `[sudo] gem install worldize`
or adding `gem 'worldize'` to Gemfile routine.

----

## Installation [1501_2000/000248_csm123_starburst.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000248_csm123_starburst.md)

Add Starburst to your gemfile:

```ruby
gem "starburst"
```

Run the following commands:

```
rake starburst:install:migrations
rake db:migrate
```

Add the following line to your ApplicationController (app/controllers/starburst/application_controller.rb):

```ruby
helper Starburst::AnnouncementsHelper
```

Add the following line to your routes file (config/routes.rb):

```ruby
mount Starburst::Engine => "/starburst"
```

Add the following line to your application.js file (app/assets/javascripts/application.js):

```
//= require starburst/starburst
```

----

## Installation (Mac OS X) [1501_2000/000247_ecmendenhall_wgif.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000247_ecmendenhall_wgif.md)
**Update 2014/04/23:** One of WGif's dependencies requires ImageMagick to compile. Before installing, make sure you:

```sh
$ brew install imagemagick
```

using [Homebrew](http://brew.sh/), or install it with your favorite package manager.

Then, to install from Rubygems:

```sh
$ gem install wgif
```

To install from source, run

```sh
$ gem build wgif.gemspec
```

and

```sh
$ gem install wgif-0.3.0.gem
```

to install the executable.

WGif uses FFmpeg for video transcoding and ImageMagick to optimize GIFs.
To install dependencies with [Homebrew](http://brew.sh/), just run

```sh
$ wgif install
```

----

## Installation [1501_2000/000246_apotonick_hooks.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000246_apotonick_hooks.md)

In your Gemfile, do

```ruby
gem "hooks"
```

----

## Installation [1501_2000/000246_antulik_pagelet_rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000246_antulik_pagelet_rails.md)
Add this line to your application's Gemfile:

```ruby
gem 'pagelet_rails'
```

Or install it yourself as:
```bash
$ gem install pagelet_rails
```

----

## Installation [1501_2000/000244_TrevorHinesley_abracadabra.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000244_TrevorHinesley_abracadabra.md)

Add this line to your application's Gemfile:

    gem 'abracadabra'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install abracadabra

----

## Installation [1501_2000/000244_arsduo_batch_api.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000244_arsduo_batch_api.md)

Setting up the Batch API is simple.  Just add the gem to your middlewares:

```ruby
# in application.rb
config.middleware.use BatchApi::RackMiddleware do |batch_config|
  # you can set various configuration options:
  batch_config.verb = :put # default :post
  batch_config.endpoint = "/batchapi" # default /batch
  batch_config.limit = 100 # how many operations max per request, default 50

  # default middleware stack run for each batch request
  batch_config.batch_middleware = Proc.new { }
  # default middleware stack run for each individual operation
  batch_config.operation_middleware = Proc.new { }
end
```

That's it!  Just fire up your curl, hit your endpoint with the right verb and a properly formatted request, and enjoy some batch API action.

----

## Installation and usage [1501_2000/000243_ncuesta_dropzonejs-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000243_ncuesta_dropzonejs-rails.md)

First add `dropzonejs-rails` to your Gemfile and, as you already know, `bundle` it and then restart your Rails app:

```ruby
# On your Gemfile
gem 'dropzonejs-rails'
```

```bash
$ bundle install
```

After that, you need to make `dropzone.js` available on your pages. To do that, you can add it to your `application.js` file, like this:

```javascript
//= require dropzone
```

And if you would like to use one of the styles bundled with Dropzone, add to your `application.css`:
```scss
*= require dropzone/basic
```
or
```scss
*= require dropzone/dropzone
```

And **Bam!** - you're all set.


----

## Installation [1501_2000/000243_trptcolin_consistency_fail.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000243_trptcolin_consistency_fail.md)

You can install the gem directly:

    gem install consistency_fail

Or if you're using Bundler (which you probably are), add it to your Gemfile.

    gem 'consistency_fail'


----

## Installation [1501_2000/000243_youpy_ruby-lastfm.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000243_youpy_ruby-lastfm.md)

----

## Installation [1501_2000/000243_eval_envied.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000243_eval_envied.md)

Add this line to your application's Gemfile:

    gem 'envied'

...then bundle:

    $ bundle

...then for Rails applications:

    $ bundle exec envied init:rails

...or for non-Rails applications:

    $ bundle exec envied init

----

## Installation [1501_2000/000242_theunraveler_taskwarrior-web.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000242_theunraveler_taskwarrior-web.md)

`gem install taskwarrior-web`

This will install an executable called `task-web`

----

## Installation [1501_2000/000241_devmynd_hstore_accessor.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000241_devmynd_hstore_accessor.md)

Add this line to your application's Gemfile:

```ruby
gem "hstore_accessor", "~> 1.1"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hstore_accessor

----

## Installation [1501_2000/000241_code-mancers_rapidfire.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000241_code-mancers_rapidfire.md)
Add this line to your application's Gemfile:

```rb
    gem 'rapidfire'
```

And then execute:

```shell
    $ bundle install
    $ bundle exec rake rapidfire:install:migrations
    $ bundle exec rake db:migrate
```

And if you want to customize rapidfire views, you can do

    $ bundle exec rails generate rapidfire:views

If you want to customize rapidfire locales (i18n) files, you can do

    $ bundle exec rails generate rapidfire:locales

----

## Installation [1501_2000/000241_huydx_facy.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000241_huydx_facy.md)
Install it yourself as:
```
$ gem install facy
```
and then refer to the [wiki page](https://github.com/huydx/facy/wiki/Installation-Guide) to complete the initial setup process. To setup facy, you need to register facebook developer account, and create your own facebook app.
- To register facebook developer account, go to: https://developers.facebook.com/docs/create-developer-account
- After registerd, you can go to https://developers.facebook.com/apps to create your new app
- And then you'are able to setup facy follow https://github.com/huydx/facy/wiki/Installation-Guide



----

## Installation [1501_2000/000241_iain_fake_sqs.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000241_iain_fake_sqs.md)

```
gem install fake_sqs
```

----

## Installation [1501_2000/000240_CalebFenton_dex-oracle.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000240_CalebFenton_dex-oracle.md)

----

## Installation [1501_2000/000239_zmbacker_enum_help.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000239_zmbacker_enum_help.md)

Add this line to your application's Gemfile:

    gem 'enum_help'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install enum_help

----

## Installation [1501_2000/000239_joecorcoran_judge.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000239_joecorcoran_judge.md)

Judge supports Rails 5.0+.
If you require Rails 4 support, please use version 2.1.x.

Judge relies on [Underscore.js](underscore) in general and [JSON2.js](json2) for browsers that lack proper JSON support. If your application already makes use of these files, you can safely ignore the versions provided with Judge.

----

## Installation [1501_2000/000239_zverok_time_math2.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000239_zverok_time_math2.md)

Install it like always:

```
$ gem install time_math2
```

or add to your Gemfile

```ruby
gem 'time_math2', require: 'time_math'
```

and `bundle install` it.

----

## Installation [1501_2000/000239_Ruenzuo_cocoapods-amimono.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000239_Ruenzuo_cocoapods-amimono.md)

```bash
gem install cocoapods-amimono
````

----

## Installation [1501_2000/000239_amatsuda_i18n_generators.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000239_amatsuda_i18n_generators.md)

*   Rails 3 or higher (with Bundler)


Add 'i18n_generators' to your Gemfile, then `bundle`. Restricting the group to
:development would be a good idea, since the generator would probably be used
only in development mode.

*   Rails 2


Use 'i18n_generators' version '< 1.2'.


----

## Installation [1501_2000/000239_KatanaCode_blogit.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000239_KatanaCode_blogit.md)

Add these to your Gemfile

``` ruby
gem "blogit"
# Blogit depends on ActsAsTaggableOn
gem "acts-as-taggable-on"
```

...and run `bundle install` to install the gem.

Next, run:

``` bash
# add an initializer to config/initializers with all of the configuration options
$ rails g blogit:install

# This will add the necessary migrations to your app's db/migrate directory
rake blogit:install:migrations

# You don't need to run this again if you've already done so
rake acts_as_taggable_on_engine:install:migrations

# This will run any pending migrations
rake db:migrate

```

then add the following to your routes.rb file:

``` bash
# config/routes.rb
mount Blogit::Engine => "/blog"
```

Finally, declare which of your models acts as blogger in your app (probably User or Admin).

``` ruby
class User < ActiveRecord::Base

  blogs

end
```

Go to http://localhost:3000/blog and see your marvelous new blog.


----

## Installation [1501_2000/000238_dansbits_lurn.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000238_dansbits_lurn.md)

Add this line to your application's Gemfile:

```ruby
gem 'lurn'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lurn

----

## Installation [1501_2000/000238_thoughtbot_backbone-support.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000238_thoughtbot_backbone-support.md)

We recommend you use Backbone-Support with Rails 3.1 or higher in order to take
advantage of the asset pipeline.

----

## Installation [1501_2000/000237_piotrmurach_tty-command.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000237_piotrmurach_tty-command.md)

Add this line to your application's Gemfile:

```ruby
gem 'tty-command'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tty-command

----

## Installation [1501_2000/000237_hzamani_active_record-acts_as.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000237_hzamani_active_record-acts_as.md)

Add this line to your application's Gemfile:

    gem 'active_record-acts_as'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_record-acts_as

----

## Installation [1501_2000/000236_kusnier_vagrant-persistent-storage.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000236_kusnier_vagrant-persistent-storage.md)

    $ vagrant plugin install vagrant-persistent-storage

----

## Installation [1501_2000/000235_cbetta_dokkufy.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000235_cbetta_dokkufy.md)

```
gem install dokkufy
```

----

## Installation [1501_2000/000235_CocoaPods_Molinillo.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000235_CocoaPods_Molinillo.md)

Add this line to your application's Gemfile:

```ruby
gem 'molinillo', :git => 'https://github.com/CocoaPods/Molinillo'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install molinillo
```

----

## Installation [1501_2000/000235_bbatsov_powerpack.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000235_bbatsov_powerpack.md)

Add this line to your application's `Gemfile` (if you're using `bundler`, that is):

    gem 'powerpack'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install powerpack

----

## Installation [1501_2000/000235_watsonbox_pocketsphinx-ruby.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000235_watsonbox_pocketsphinx-ruby.md)

This gem depends on [Pocketsphinx](https://github.com/cmusphinx/pocketsphinx) (libpocketsphinx), and [Sphinxbase](https://github.com/cmusphinx/sphinxbase) (libsphinxbase and libsphinxad). The current stable versions (0.8) are from late 2012 and are now outdated. Build them manually from source, or on OSX the latest development (potentially unstable) versions can be installed using [Homebrew](http://brew.sh/) as follows ([more information here](https://github.com/watsonbox/homebrew-cmu-sphinx)).

Add the Homebrew tap:

```bash
$ brew tap watsonbox/cmu-sphinx
```

You'll see some warnings as these formulae conflict with those in the main reponitory, but that's fine.

Install the libraries:

```bash
$ brew install --HEAD watsonbox/cmu-sphinx/cmu-sphinxbase
$ brew install --HEAD watsonbox/cmu-sphinx/cmu-sphinxtrain # optional
$ brew install --HEAD watsonbox/cmu-sphinx/cmu-pocketsphinx
```

You can test continuous recognition as follows:

```bash
$ pocketsphinx_continuous -inmic yes
```

Then add this line to your application's Gemfile:

    gem 'pocketsphinx-ruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pocketsphinx-ruby


----

## Installation [1501_2000/000234_jayzes_cucumber-api-steps.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000234_jayzes_cucumber-api-steps.md)

Add the following line to your Gemfile, preferably in the test or cucumber group:

```ruby
gem 'cucumber-api-steps', :require => false
```

Then add the following line to your env.rb to make the step definitions available in your features:

```ruby
require 'cucumber/api_steps'
```

# Usage

Still a work in progress.  For now, read the api_steps.rb file or check out the [stashboard-rails](https://github.com/jayzes/stashboard-rails) project - its Cucumber features make extensive use of the steps in this gem.

# Examples
```cucumber
Feature: API

  Scenario: List tweets in JSON
    When I send and accept JSON
    And I send a GET request to "/api/tweets"
    Then the response status should be "200"
    And the JSON response should be:
      """
      [{"tweet":"Hello World!"},{"tweet":"New Rails has been released"}]
      """
    And the JSON response should have "$..tweet" with the text "Hello World!"
    And the JSON response should have "$..tweet" with a length of 2

  Scenario: List tweets in XML
    When I send and accept XML
    And I send a GET request to "/api/tweets"
    Then the XML response should have "tweet" with the text "Hello World!"

  Scenario: Post tweet using POST-params
    When I send a POST request to "/api/tweets" with the following:
      | tweet | Hello World! |
      | lat   | 42.848282    |
      | lng   | 74.634933    |
    Then the response status should be "201"

  Scenario: Post tweet using json in POST body
    When I send a POST request to "/api/tweets" with the following:
      """
      {"tweet":"Hello World!","lat":"42.848282", "lng":"74.634933"}
      """
    Then the response status should be "201"

  Scenario: Basic authentication
    When I authenticate as the user "joe" with the password "password123"
    And I send a GET request to "/api/tweets"
    Then the response status should be "200"

  Scenario: Digest authentication
    When I digest-authenticate as the user "joe" with the password "password123"
    And I send a GET request to "/api/tweets"
    Then the response status should be "200"
```
# Contributors
* Jay Zeschin
* Justin Smestad
* Kevin Pfefferle
* Kalys Osmonov
* Mingding Han
* Gabe Varela
* Steven Heidel
* Adam Elhardt
* Gonzalo Bulnes Guilpain

----

## Installation and Requirements [1501_2000/000233_mitchellh_virtualbox.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000233_mitchellh_virtualbox.md)

First you need to install [VirtualBox](http://www.virtualbox.org/) which is available for
Windows, Linux, and OS X. After installation, install the gem:

    sudo gem install virtualbox

The gem uses the native COM interface with VirtualBox provides to communicate with
VirtualBox. On Windows, this is globally available. On Linux-based machines, the gem
uses Ruby-FFI to talk to a dynamic library. No configuration should be necessary.

----

## Installation [1501_2000/000233_rwz_nestive.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000233_rwz_nestive.md)

* add `gem 'nestive', '~> 0.5'` to your Gemfile
* run `bundle`

----

## Installation [1501_2000/000233_undercase_proof.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000233_undercase_proof.md)
In your Gemfile:

    gem 'proof-rails', require: "proof"
----

## Installation [1501_2000/000232_renz45_mandrill_mailer.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000232_renz45_mandrill_mailer.md)
Add this line to your application's Gemfile:

```
gem 'mandrill_mailer'
```

And then execute:

```
$ bundle install
```

Or install it yourself as:

```
$ gem install mandrill_mailer
```

----

## Installation [1501_2000/000232_aki017_slack-ruby-gem.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000232_aki017_slack-ruby-gem.md)

Add this line to your application's Gemfile:

    gem 'slack-api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slack-api

----

## Installation [1501_2000/000232_jekuno_milia.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000232_jekuno_milia.md)
----

## Installation [1501_2000/000232_pzol_monadic.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000232_pzol_monadic.md)

Add this line to your application's Gemfile:

    gem 'monadic'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install monadic

----

## Installation [1501_2000/000231_jsuchal_garelic.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000231_jsuchal_garelic.md)

It's easy as 1-2-3.

*Step 1.* Add this line to your application's Gemfile:

    gem 'garelic'

*Step 2.* Add `<%= Garelic.monitoring 'UA-XXXXXX-X' %>` instrumentation in application layout template (before the closing `</head>` tag) like this:

    <head>
        <!-- other rails stuff -->
        <%= Garelic.monitoring 'UA-XXXXXX-X' %>
        <!-- make sure you remove your old GA code! -->
    </head>

*Step 3.* Go to Google Analytics > Content > Site Speed > User Timings

Enjoy!

----

## Installation [1501_2000/000230_vanruby_canada.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000230_vanruby_canada.md)

Add this line to your application's Gemfile:

    gem 'canada'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install canada

Note: This gem requires Ruby 2.0.0 or higher.

----

## Installation [1501_2000/000230_collectiveidea_interactor-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000230_collectiveidea_interactor-rails.md)

Add this line to your application's Gemfile:

```ruby
gem "interactor-rails", "~> 2.0"
```

Interactor Rails is compatible with Ruby 2.3, 2.4, or 2.5 on Rails 4.2, 5.0,
5.1, or 5.2.

----

## Installation [1501_2000/000230_railsware_caphub.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000230_railsware_caphub.md)

    $ gem install caphub

----

## Installation within an existing Rails app [1501_2000/000230_etewiah_property_web_builder.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000230_etewiah_property_web_builder.md)

Install into an existing Rails project by adding these lines in your applications's Gemfile:

```ruby
gem 'pwb', git: 'https://github.com/etewiah/property_web_builder', branch: 'master'
gem 'globalize', git: 'https://github.com/globalize/globalize'
gem 'paloma', github: 'fredngo/paloma'
```

Also, be sure to use Postgres as your database (by having the "pg" gem and Postgres installed locally - version 9.5 or above)
And then execute:
```bash
$ bundle
```

Mount the PropertyWebBuilder by adding the following to your routes.rb file:
```ruby
mount Pwb::Engine => '/'
```

and run the ff commands from the console:
```bash
rails pwb:install:migrations
rails db:create
rails db:migrate
rails pwb:db:seed
rails pwb:db:seed_pages
```

----

## Installation [1501_2000/000230_telegram-bot-rb_telegram-bot.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000230_telegram-bot-rb_telegram-bot.md)

Add this line to your application's Gemfile:

```ruby
gem 'telegram-bot'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install telegram-bot

Require if necessary:

```ruby
require 'telegram/bot'
```

----

## Installation [1501_2000/000229_haml_html2haml.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000229_haml_html2haml.md)

Add this line to your application's Gemfile:

    gem 'html2haml'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install html2haml

----

## Installation [1501_2000/000229_michaelfairley_method_decorators.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000229_michaelfairley_method_decorators.md)
`gem install method_decorators`

----

## Installation [1501_2000/000229_savonrb_httpi.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000229_savonrb_httpi.md)

HTTPI is available through [Rubygems](https://rubygems.org/gems/httpi) and can be installed via:

```
$ gem install httpi
```

or add it to your Gemfile like this:

```
gem 'httpi', '~> 2.1.0'
```


----

## Installation [1501_2000/000229_fortytools_forty_facets.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000229_fortytools_forty_facets.md)

Add this line to your application's Gemfile:

    gem 'forty_facets'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install forty_facets

----

## Installation [1501_2000/000228_proxylocal_proxylocal-gem.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000228_proxylocal_proxylocal-gem.md)

ProxyLocal is a tool that runs on the command line.

On any system with [ruby] and [rubygems] installed, open your terminal
and type:

    $ gem install proxylocal

----

## Installation [1501_2000/000228_balvig_chili.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000228_balvig_chili.md)

First add Chili to your app's Gemfile:

```ruby
gem 'chili'
```

and run `bundle`.

----

## Installation [1501_2000/000228_michenriksen_birdwatcher.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000228_michenriksen_birdwatcher.md)

----

## Installation [1501_2000/000228_github-archive_albino.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000228_github-archive_albino.md)

    sudo easy_install pygments
    gem install albino

----

## Installation [1501_2000/000228_railsware_global.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000228_railsware_global.md)

Add to Gemfile:

```ruby
gem 'global'
```

----

## Installation [1501_2000/000228_qrush_motion-layout.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000228_qrush_motion-layout.md)

Add this line to your application's Gemfile:

    gem 'motion-layout'

And then execute:

    bundle

Or install it yourself as:

    gem install motion-layout

Then in your `Rakefile`:

    require 'motion-layout'

----

## Installation ## [1501_2000/000228_karmi_monittr.markdown](https://github.com/ts-3156/readmes/blob/master/1501_2000/000228_karmi_monittr.markdown)

The best way to install the gem is from the source:

    $ git clone http://github.com/karmi/monittr.git
    $ cd monittr
    $ rake install

Stable versions of the gem can be installed from Rubygems:

    $ gem install monittr


----

## Installation [1501_2000/000227_rmm5t_strip_attributes.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000227_rmm5t_strip_attributes.md)

Include the gem in your Gemfile:

```ruby
gem "strip_attributes"
```

----

## Installation [1501_2000/000227_giginet_xcprofiler.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000227_giginet_xcprofiler.md)

```
gem install xcprofiler
```

xcprofiler is tested on latest Ruby 2.3/2.4.

----

## Installation [1501_2000/000227_perfectline_validates_url.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000227_perfectline_validates_url.md)

```    
# add this to your Gemfile
gem "validate_url"

# and  run
sudo gem install validate_url
```

----

## Installation [1501_2000/000227_intercom_intercom-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000227_intercom_intercom-rails.md)
Add this to your Gemfile:

```ruby
gem "intercom-rails"
```

Then run:

```
bundle install
```

Take note of your `app_id` from [here](https://app.intercom.io/a/apps/_/settings/api-keys) and generate a config file:

```
rails generate intercom:config YOUR-APP-ID
```

To make installing Intercom easy, where possible a `<script>` tag **will be automatically inserted before the closing `</body>` tag**. For most Rails apps, **you won't need to do any extra config**. Having trouble? Check out troubleshooting below.


----

## Installation [1501_2000/000227_devmynd_jsonb_accessor.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000227_devmynd_jsonb_accessor.md)

Add this line to your application's `Gemfile`:

```ruby
gem "jsonb_accessor", "~> 1.0.0"
```

And then execute:

    $ bundle install

----

## Installation and Usage [1501_2000/000226_yuki24_rambulance.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000226_yuki24_rambulance.md)

Add this line to your application's Gemfile:

```
gem 'rambulance'
```

And then execute:

```
$ rails g rambulance:install
```

Rambulance only has support for `erb`. If you would like to use haml or slim templates, please see [How to Convert Your `.erb` to `.slim`](https://github.com/slim-template/slim/wiki/Template-Converters-ERB-to-SLIM) or [html2haml](https://github.com/haml/html2haml).

Now you can start editing templates like `app/views/errors/not_found.html.erb`. Edit, run `rails server` and open [`localhost:3000/rambulance/not_found`](http://localhost:3000/rambulance/not_found)!

----

## Installation (Rails) [1501_2000/000226_joshsusser_refraction.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000226_joshsusser_refraction.md)

Refraction can be installed in a Rails application as a plugin.

    $ script/plugin install git://github.com/pivotal/refraction.git

It can also be used as a gem:

    $ gem install refraction

In `environments/production.rb`, add Refraction at or near the top of your middleware stack.

    config.middleware.insert_before(::Rack::Lock, ::Refraction, {})

You may want to occasionally turn on Refraction in the development environment for testing
purposes, but if your rules redirect to other servers that can be a problem.

Put your rules in `config/initializers/refraction_rules.rb` (see example above). The file name
doesn't actually matter, but convention is useful.

----

## Installation [1501_2000/000225_willnet_gimei.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000225_willnet_gimei.md)

Add this line to your application's Gemfile:

    gem 'gimei'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gimei

----

## Installation [1501_2000/000225_endofunky_oprah.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000225_endofunky_oprah.md)

Add this line to your application's Gemfile:

``` ruby
gem 'oprah'
```

And then execute:

```
$ bundle
```

----

## Installation [1501_2000/000224_hybridgroup_taskmapper.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000224_hybridgroup_taskmapper.md)

Taskmapper is a Gem, so we can easily install it by using RubyGems:

    gem install taskmapper

Taskmapper depends on [Hashie](http://github.com/intridea/hashie), which is an amazing library which makes converting objects to hashes, and the other way around, a joy. It should be installed automatically whenever installing taskmapper.

----

## Installation ## [1501_2000/000224_Mange_roadie-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000224_Mange_roadie-rails.md)

[Add this gem to your Gemfile as recommended by Rubygems][gem] and run `bundle install`.

```ruby
gem 'roadie-rails', '~> 0.0'
```

----

## Installation [1501_2000/000223_nakiostudio_xcov.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000223_nakiostudio_xcov.md)
```
sudo gem install xcov
```

----

## Installation [1501_2000/000223_socketry_timers.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000223_socketry_timers.md)

Add this line to your application's Gemfile:

```ruby
gem 'timers'
```

And then execute:

	$ bundle

Or install it yourself as:

	$ gem install timers

----

## Installation [1501_2000/000223_pauldix_sax-machine.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000223_pauldix_sax-machine.md)

Add this line to your application's Gemfile:

```ruby
gem 'sax-machine'
```

And then execute:

```bash
$ bundle
```

----

## Installation [1501_2000/000222_rails_actionpack-page_caching.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000222_rails_actionpack-page_caching.md)

Add this line to your application's `Gemfile`:

``` ruby
gem "actionpack-page_caching"
```

And then execute:

```
$ bundle
```

----

## Installation [1501_2000/000221_pixielabs_letsencrypt-rails-heroku.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000221_pixielabs_letsencrypt-rails-heroku.md)

Add the gem to your Gemfile:

```
# Until the new API calls are generally available, you must manually specify my fork
# of the Heroku API gem:
gem 'platform-api', git: 'https://github.com/jalada/platform-api', branch: 'master'

gem 'letsencrypt-rails-heroku', group: 'production'
```

And add it as middleware in your `config/environments/production.rb`:

```
Rails.application.configure do
  <...>

  config.middleware.use Letsencrypt::Middleware

  <...>
end
```

If you have configured your app to enforce SSL with the configuration option
`config.force_ssl = true` you will need to insert the middleware in front of
the middleware performing that enforcement instead, as LetsEncrypt do not allow
redirects on their verification requests:

```ruby
Rails.application.configure do
  # <...>
  
  config.middleware.insert_before ActionDispatch::SSL, Letsencrypt::Middleware

  # <...>
end
```

----

## Installation [1501_2000/000221_darkskyapp_forecast-ruby.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000221_darkskyapp_forecast-ruby.md)

`gem install forecast_io`

or in your `Gemfile`

```ruby
gem 'forecast_io'
```

----

## Installation [1501_2000/000221_eljojo_telegram_bot.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000221_eljojo_telegram_bot.md)

Add this line to your application's Gemfile (currently under development):

```ruby
gem 'telegram_bot'
```

And then execute:

    $ bundle

----

## Installation [1501_2000/000220_zach-capalbo_flammarion.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000220_zach-capalbo_flammarion.md)

First, you need to install [electron](http://electron.atom.io/) or [chrome](http://www.google.com/chrome)
and make sure it's in your path. (*Note:* On Windows, currently only chrome
works, but you don't need to worry about putting it in your path.)

Then you can install the gem:

```
gem install flammarion
```

or add it to your Gemfile.

----

## Installation [1501_2000/000219_continuum_espinita.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000219_continuum_espinita.md)

In your gemfile

```ruby
gem "espinita"
```

In console
```ruby
$ rake espinita:install:migrations
$ rake db:migrate
```

----

## Installation [1501_2000/000219_commonthread_flickr_fu.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000219_commonthread_flickr_fu.md)
```bash
sudo gem install flickr_fu
```

----

## Installation [1501_2000/000219_singlebrook_utf8-cleaner.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000219_singlebrook_utf8-cleaner.md)

Add this line to your application's Gemfile:

    gem 'utf8-cleaner'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install utf8-cleaner

If you're not running Rails, you'll have to add the middleware to your config.ru:

    require 'utf8-cleaner'
    use UTF8Cleaner::Middleware

----

## Installation [1501_2000/000218_playgroundbooks_playgroundbook.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000218_playgroundbooks_playgroundbook.md)

```sh
> [sudo] gem install playgroundbook
```

----

## Installation [1501_2000/000218_joshwlewis_unitwise.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000218_joshwlewis_unitwise.md)

Add this line to your application's Gemfile:

    gem 'unitwise'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unitwise


----

## Installation [1501_2000/000218_kenn_jquery-rails-cdn.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000218_kenn_jquery-rails-cdn.md)

Add this line to your application's Gemfile:

```ruby
gem 'jquery-rails-cdn'
```

----

## Installation [1501_2000/000218_state-machines_state_machines-activerecord.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000218_state-machines_state_machines-activerecord.md)

Add this line to your application's Gemfile:

    gem 'state_machines-activerecord'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install state_machines-activerecord

----

## Installation with RubyGems [1501_2000/000218_FooBarWidget_daemon_controller.markdown](https://github.com/ts-3156/readmes/blob/master/1501_2000/000218_FooBarWidget_daemon_controller.markdown)

    gem install daemon_controller

This gem is signed using PGP with the [Phusion Software Signing key](http://www.phusion.nl/about/gpg). That key in turn is signed by [the rubygems-openpgp Certificate Authority](http://www.rubygems-openpgp-ca.org/).

You can verify the authenticity of the gem by following [The Complete Guide to Verifying Gems with rubygems-openpgp](http://www.rubygems-openpgp-ca.org/blog/the-complete-guide-to-verifying-gems-with-rubygems-openpgp.html).

## Installation on Ubuntu [1501_2000/000218_FooBarWidget_daemon_controller.markdown](https://github.com/ts-3156/readmes/blob/master/1501_2000/000218_FooBarWidget_daemon_controller.markdown)

Use our [PPA](https://launchpad.net/~phusion.nl/+archive/misc):

    sudo add-apt-repository ppa:phusion.nl/misc
    sudo apt-get update
    sudo apt-get install ruby-daemon-controller

## Installation on Debian [1501_2000/000218_FooBarWidget_daemon_controller.markdown](https://github.com/ts-3156/readmes/blob/master/1501_2000/000218_FooBarWidget_daemon_controller.markdown)

Our Ubuntu Lucid packages are compatible with Debian 6.

    sudo sh -c 'echo deb http://ppa.launchpad.net/phusion.nl/misc/ubuntu lucid main > /etc/apt/sources.list.d/phusion-misc.list'
    sudo sh -c 'echo deb-src http://ppa.launchpad.net/phusion.nl/misc/ubuntu lucid main >> /etc/apt/sources.list.d/phusion-misc.list'
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 2AC745A50A212A8C
    sudo apt-get update
    sudo apt-get install ruby-daemon-controller

## Installation on RHEL, CentOS and Amazon Linux [1501_2000/000218_FooBarWidget_daemon_controller.markdown](https://github.com/ts-3156/readmes/blob/master/1501_2000/000218_FooBarWidget_daemon_controller.markdown)

Enable our YUM repository:

    # RHEL 6, CentOS 6
    curl -L https://oss-binaries.phusionpassenger.com/yumgems/phusion-misc/el.repo | \
      sudo tee /etc/yum.repos.d/phusion-misc.repo
    
    # Amazon Linux
    curl -L https://oss-binaries.phusionpassenger.com/yumgems/phusion-misc/amazon.repo | \
      sudo tee /etc/yum.repos.d/phusion-misc.repo

Install our package:

    sudo yum install rubygem-daemon_controller

----

## Installation [1501_2000/000217_hakirisec_hakiri_toolbelt.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000217_hakirisec_hakiri_toolbelt.md)

Hakiri Toolbelt is a Ruby gem that can be installed with

~~~
$ gem install hakiri
~~~

After it's installed, restart your command line and you should be good to go. Hakiri supports Ruby 1.8.7, 1.9.x and 2.0.x.

----

## Installation [1501_2000/000217_oozou_ruby-prof-flamegraph.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000217_oozou_ruby-prof-flamegraph.md)

```ruby
gem 'ruby-prof-flamegraph'
```


----

## Installation [1501_2000/000216_carmen-ruby_carmen-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000216_carmen-ruby_carmen-rails.md)

Just add carmen-rails to your Gemfile:

```ruby
gem 'carmen-rails', '~> 1.0.0'
```
----

## Installation [1501_2000/000216_sandro_specjour.markdown](https://github.com/ts-3156/readmes/blob/master/1501_2000/000216_sandro_specjour.markdown)
    gem install specjour

----

## Installation [1501_2000/000215_sony_v8eval.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000215_sony_v8eval.md)

The installation takes several tens of minutes due to V8 build.

----

## Installation [1501_2000/000215_MartinJNash_Royce.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000215_MartinJNash_Royce.md)

Add this to your Gemfile.

    gem 'royce'

Be sure to run `bundle install`.

Run this in your terminal.

    rails g royce:install

And run `rake db:migrate`.

Add this to a model.

    royce_roles %w[ owner editor administrator ]


----

## Installation [1501_2000/000215_peek_peek-rblineprof.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000215_peek_peek-rblineprof.md)

Add this line to your application's Gemfile:

    gem 'peek-rblineprof'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install peek-rblineprof

----

## Installation [1501_2000/000215_skinnyworm_omniauth-wechat-oauth2.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000215_skinnyworm_omniauth-wechat-oauth2.md)

Add to your `Gemfile`:

```ruby
gem "omniauth-wechat-oauth2"
```

Then `bundle install`.


----

## Installation [1501_2000/000215_ryantate_rturk.markdown](https://github.com/ts-3156/readmes/blob/master/1501_2000/000215_ryantate_rturk.markdown)

    # Requires Ruby >1.9.2
    gem install rturk

----

## Installation [1501_2000/000215_chadrem_workers.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000215_chadrem_workers.md)

Add this line to your application's Gemfile:

```Ruby
gem 'workers'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install workers
```

----

## Installation [1501_2000/000215_typescript-ruby_typescript-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000215_typescript-ruby_typescript-rails.md)

Add this line to your application's Gemfile:

    gem 'typescript-rails'

And then execute:

    $ bundle

Note: We need to install (if we haven't already) the Typescript definitions, [more info](https://github.com/DefinitelyTyped/DefinitelyTyped#how-do-i-get-them). 

    npm install --save-dev @types/node

----

## Installation [1501_2000/000215_discourse_logster.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000215_discourse_logster.md)

Add these lines to your application's Gemfile:

    gem 'redis'
    gem 'logster'

And then execute:

    $ bundle

Make logster web available add the following to your `routes.rb`:

```
constraints lambda { |req| req.session["admin"] } do
  mount Logster::Web => "/logs"
end
```

By default, logster will only run in development and production environments.

To run logster in other environments, in `config/application.rb`

```
Logster.set_environments([:development, :staging, :production])
```

----

## Installation [1501_2000/000214_papertrail_remote_syslog.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000214_papertrail_remote_syslog.md)

Install the gem, which includes a binary called "remote_syslog":

    $ [sudo] gem install remote_syslog

Optionally, create a log_files.yml with the log file paths to read and the
host/port to log to (see examples/[log_files.yml.example][sample config]). These can also be
specified as command-line arguments (below).


## Installation [1501_2000/000214_papertrail_remote_syslog.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000214_papertrail_remote_syslog.md)

----

## Installation [1501_2000/000214_gemgento_rails_script.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000214_gemgento_rails_script.md)

Add this line to your application's Gemfile:

    gem 'rails_script', '~> 2.0'

And then execute:

    $ bundle
    
After bundling you need to run the initial installation generator:

    $ rails g rails_script:install
    
After the generator finishes, you will be prompted to add helper call to your application layout.  The generated code is responsible for initializing and calling the action specific JavaScript.  This helper should be called before the closing body tag.

```
<%= include_rails_script %>
```

NOTE: Your JS files needed have been included before `include_rails_script`.  In other words, you still need `<%= javascript_include_tag "application" %>` in your application layout.

After including the view helper in your application layout, you will need to require the RailsScript javascript library inside your application.js or application.coffee file before the `require_tree .` line.

if using javascript (app/assets/javascripts/application.js):
```
// * other app specific js require lines 

//= require rails_script
//= require_tree .
```

if using coffeescript (app/assets/javascripts/application.coffee):
```
# * other app specific js require lines 

#= require rails_script
#= require_tree .
```

----

## Installation [1501_2000/000214_tzinfo_tzinfo.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000214_tzinfo_tzinfo.md)

The TZInfo gem can be installed by running `gem install tzinfo` or by adding
to `gem 'tzinfo'` to your `Gemfile` and running `bundle install`.

To use the Ruby modules as the data source, TZInfo::Data will also need to be
installed by running `gem install tzinfo-data` or by adding `gem 'tzinfo-data'`
to your `Gemfile`.


----

## Installation [1501_2000/000214_alno_irwi.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000214_alno_irwi.md)

Add to your Gemfile:

    gem 'irwi', :git => 'git://github.com/alno/irwi.git'

Then in your application directory call:

    rails g irwi_wiki

It will generate:
*   WikiPageController to serve wiki pages
*   WikiPage model to represent page
*   Migration to prepare database


Also it will add to your `routes.rb` something like:

    wiki_root '/wiki'

----

## Installation [1501_2000/000213_girishso_pluck_to_hash.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000213_girishso_pluck_to_hash.md)

Add this line to your application's Gemfile:

```ruby
gem 'pluck_to_hash'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pluck_to_hash

----

## Installation [1501_2000/000213_Locale_localeapp.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000213_Locale_localeapp.md)

Note that the API key is actually never written to configuration files
generated by the gem, but is expected to be set in the environment as
`LOCALEAPP_API_KEY`.

For convenience, the `install` command accepts a `-e` or
`--write-env-file` option that will append the API key to `.env` file,
so that you can use `foreman` or other tools supporting this
convention.

----

## Installation [1501_2000/000213_piotrmurach_tty-spinner.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000213_piotrmurach_tty-spinner.md)

Add this line to your application's Gemfile:

```ruby
gem 'tty-spinner'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tty-spinner

----

## Installation [1501_2000/000213_frozon_passbook.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000213_frozon_passbook.md)

Include the passbook gem in your project.

IE:  In your Gemfile
```
gem 'passbook'
```

----

## Installation ## [1501_2000/000213_nicotaing_yaml_record.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000213_nicotaing_yaml_record.md)

Install using rubygems:

```bash
gem install yaml_record
```

Or add gem to your Gemfile:

```ruby
# Gemfile
gem 'yaml_record'
# OR if you're using Rails 3.1
gem 'yaml_record', :git => "git@github.com:Nico-Taing/yaml_record.git", :branch => "rails31"
```

----

## Installation && Usage [1501_2000/000212_sickill_coloration.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000212_sickill_coloration.md)

You can use Coloration in two ways: online or on your local machine. The online
 version is available at [coloration.ku1ik.com](http://coloration.ku1ik.com/).
 If you like to install coloration on your own machine to do some batch
 conversion or for some other reason just run:

    gem install coloration

It gives you _tm2vim_, _tm2jedit_ and _tm2katepart_ binaries to do the
 conversion on command line.

----

## Installation [1501_2000/000212_madzhuga_rails_workflow.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000212_madzhuga_rails_workflow.md)

Add to your application's Gemfile:

```ruby
gem 'rails_workflow'
```

And then execute:

```sh
$ bundle install
```

and mount it to /workflow routes:
```ruby
Rails.application.routes.draw do
  ...
  mount RailsWorkflow::Engine => '/workflow', as: 'workflow'
  ...
end
```
Generate all models:
```sh
$ rails generate rails_workflow:install
$ bundle exec rake db:migrate
```

I am developing this engine using PostgreSQL database. In case if you using MySQL, add following
to your config/initializers/workflow.rb file:
```ruby
RailsWorkflow.setup do |config|
  config.sql_dialect= 'mysql'
end
```
----

## Installation [1501_2000/000211_panthomakos_timezone.markdown](https://github.com/ts-3156/readmes/blob/master/1501_2000/000211_panthomakos_timezone.markdown)

Use the [`timezone`](https://rubygems.org/gems/timezone) gem - available on RubyGems. Semantic versioning is used, so if you would like to remain up-to-date and avoid any backwards-incompatible changes, use the following in your `Gemfile`:

    gem 'timezone', '~> 1.0'

----

## Installation [1501_2000/000211_sciurus_vagrant-mutate.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000211_sciurus_vagrant-mutate.md)

----

## Installation [1501_2000/000211_blahed_chainsaw.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000211_blahed_chainsaw.md)
    
    gem install chainsaw

----

## Installation [1501_2000/000211_summernote_summernote-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000211_summernote_summernote-rails.md)

Environments:
- Ruby v2.5.0
- Gems :
  - Rails v5.2.0.rc1
  - bootstrap v4.0.0
  - simple_form v3.5.1

Add the following gems to your application's Gemfile:

```ruby
gem 'rails', '~> 5.2.0.rc1'
gem 'jquery-rails', '~> 4.3.1'
gem 'bootstrap', '~> 4.0.0'
gem 'summernote-rails', '~> 0.8.10.0'
gem 'simple_form', '~> 3.5.1'
```

And then execute:

```bash
$ bundle install
```

> **Note**: When you use simple_form with bootstrap, you should execute `rails g simple_form --bootstrap` in terminal. Especially, if you want to use Bootstrap version 4, you should create config/initializers/simple_form_bootstrap4.rb which you can reference in the **example** project in this repository.

----

## Installation [1501_2000/000211_JustinLove_autoscaler.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000211_JustinLove_autoscaler.md)

    gem install autoscaler

----

## Installation [1501_2000/000210_orgsync_stoplight.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000210_orgsync_stoplight.md)

Add it to your Gemfile:

``` rb
gem 'stoplight'
```

Or install it manually:

``` sh
$ gem install stoplight
```

Stoplight uses [Semantic Versioning][]. Check out [the change log][] for a
detailed list of changes.

Stoplight works with all supported versions of Ruby (2.1 through 2.3).

----

## Installation [1501_2000/000209_citusdata_activerecord-multi-tenant.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000209_citusdata_activerecord-multi-tenant.md)

Add the following to your Gemfile:

```ruby
gem 'activerecord-multi-tenant'
```

----

## Installation [1501_2000/000207_intercom_intercom-ruby.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000207_intercom_intercom-ruby.md)

    gem install intercom

Using bundler:

    gem 'intercom', '~> 3.7.1'

----

## Installation [1501_2000/000207_lostisland_sawyer.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000207_lostisland_sawyer.md)

Add this line to your application's Gemfile:

```ruby
gem 'sawyer'
```

And then execute:

```sh
bundle
```

Or install it yourself as:

```sh
gem install sawyer
```

----

## Installation [1501_2000/000206_collectiveidea_acts_as_geocodable.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000206_collectiveidea_acts_as_geocodable.md)

Install as a gem

```
gem install acts_as_geocodable
```

or add it to your Gemfile

```ruby
gem "acts_as_geocodable"
```

[Graticule](http://github.com/collectiveidea/graticule) is used for all the heavy lifting and will be installed too.

----

## Installation [1501_2000/000206_kernow_shortcode.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000206_kernow_shortcode.md)

Add this line to your application's Gemfile:

```ruby
gem 'shortcode'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install shortcode
```

Shortcode is tested against ruby version 2.2, 2.3, and 2.4 as well as jruby (2.x compatible), it will not work with ruby 1.8 and is no longer tested against ruby 1.9. Shortcode rails integration is tested against
Rails versions 4.1, 4.2, 5.0 and 5.1.

----

## Installation [1501_2000/000206_aderyabin_localer.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000206_aderyabin_localer.md)

Add this line to your application's Gemfile:

```ruby
gem 'localer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install localer

----

## Installation [1501_2000/000206_RubyMoney_monetize.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000206_RubyMoney_monetize.md)

Add this line to your application's Gemfile:

    gem 'monetize'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install monetize

----

## Installation [1501_2000/000206_nicksieger_multipart-post.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000206_nicksieger_multipart-post.md)

    gem install multipart-post 
    
or in your Gemfile

    gem 'multipart-post'

----

## Installation [1501_2000/000205_thoughtbot_json_matchers.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000205_thoughtbot_json_matchers.md)

Add this line to your application's `Gemfile`:

```ruby
group :test do
  gem "json_matchers"
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install json_matchers

----

## Installation [1501_2000/000205_jetrockets_attrio.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000205_jetrockets_attrio.md)

Add this line to your application's Gemfile:

    gem 'attrio'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install attrio

----

## Installation [1501_2000/000204_bensie_sshkey.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000204_bensie_sshkey.md)

    gem install sshkey

----

## Installation [1501_2000/000204_oivoodoo_devise_masquerade.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000204_oivoodoo_devise_masquerade.md)

Add this line to your application's Gemfile:

    gem 'devise_masquerade'

And then execute:

    $ bundle

----

## Installation [1501_2000/000204_bootstrap-ruby_bootstrap-editable-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000204_bootstrap-ruby_bootstrap-editable-rails.md)

Add this line to your application's Gemfile:

    gem 'bootstrap-editable-rails'

And then execute:

    $ bundle

----

## Installation [1501_2000/000204_DarthSim_carrierwave-bombshelter.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000204_DarthSim_carrierwave-bombshelter.md)

Add this line to your application's Gemfile:

```ruby
gem 'carrierwave-bombshelter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install carrierwave-bombshelter

----

## Installation [1501_2000/000204_thoughtbot_paul_revere.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000204_thoughtbot_paul_revere.md)

First, include the gem as normal in your Gemfile:

    gem "paul_revere"

Then, run the generator to create the migration and copy the javascript.

    rails generate paul_revere

The announcements JS will be installed into vendor/assets/javascripts.
You can add the announcement JS to `app/assets/javascripts/application.js`:

    //= require announcements

This will include the javascript into the `application.js` for the entire site.

Finally, create the announcements table by running the migration:

    rake db:migrate

Copy built-in partials into your Rails application by running:

    rails generate paul_revere:views

----

## Installation [1501_2000/000204_ankane_safely.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000204_ankane_safely.md)

Add this line to your application’s Gemfile:

```ruby
gem 'safely_block'
```

----

## Installation [1501_2000/000204_rails_coffee-rails.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000204_rails_coffee-rails.md)

Since Rails 3.1 Coffee-Rails is included in the default Gemfile when you create a new application. If you are upgrading to Rails 3.1 you must add the coffee-rails to your Gemfile:

~~~ruby
gem 'coffee-rails'
~~~

----

## Installation [2001_2500/000203_rvm_rvm-capistrano.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000203_rvm_rvm-capistrano.md)

RVM / Capistrano integration is available as a separate gem

```bash
$ gem install rvm-capistrano
```

Or, if the **capistrano** gem is already in your `Gemfile`, then add **rvm-capistrano**:

```bash
$ echo "gem 'rvm-capistrano'" >> Gemfile
$ bundle install
```

----

## Installation [2001_2500/000203_devnacho_mountain_view.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000203_devnacho_mountain_view.md)

Add this line to your application's Gemfile:

    gem 'mountain_view'

Then execute:

    $ bundle

Mountain View supports Ruby 2.2+ and Rails 4.2+ (although it may work in older
versions)

----

## Installation [1501_2000/000203_whitequark_rack-utf8_sanitizer.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000203_whitequark_rack-utf8_sanitizer.md)

Add this line to your application's Gemfile:

    gem 'rack-utf8_sanitizer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-utf8_sanitizer

For Rails, add this to your `application.rb`:

``` ruby
config.middleware.insert 0, Rack::UTF8Sanitizer
```

For Rack apps, add this to `config.ru`:

``` ruby
use Rack::UTF8Sanitizer
```

----

## Installation [1501_2000/000203_zbruhnke_bloggy.md](https://github.com/ts-3156/readmes/blob/master/1501_2000/000203_zbruhnke_bloggy.md)

Add this line to your application's Gemfile:

    gem 'bloggy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bloggy

----

## Installation [2001_2500/000203_simsicon_weibo_2.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000203_simsicon_weibo_2.md)

I call it weibo_2 because someone else took the name weibo_oauth2.

```bash
$ gem install weibo_2
```

----

## Installation [2001_2500/000202_hisea_devise-bootstrap-views.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000202_hisea_devise-bootstrap-views.md)

Make sure Bootstrap 4 is installed, either as a Ruby gem or using CDN:

```html
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
```


Add this line to your application's Gemfile:

```ruby
gem 'devise-bootstrap-views', '~> 1.0'
```

And then execute:

    $ bundle install

----

## Installation [2001_2500/000201_Dynamoid_Dynamoid.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000201_Dynamoid_Dynamoid.md)

Installing Dynamoid is pretty simple. First include the Gem in your Gemfile:

```ruby
gem 'dynamoid'
```
----

## Installation [2001_2500/000201_yous_whiteglass.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000201_yous_whiteglass.md)

Add this line to your Jekyll site's Gemfile:

``` ruby
gem "jekyll-whiteglass"
```

And add this line to your Jekyll site's `_config.yml`:

``` yaml
theme: jekyll-whiteglass
```

And then execute:

``` sh
bundle
```

Or install it yourself as:

``` sh
gem install jekyll-whiteglass
```

----

## Installation [2001_2500/000201_cookpad_kuroko2.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000201_cookpad_kuroko2.md)

```bash
$ rails new your_kuroko2_application --database=mysql --skip-turbolinks --skip-javascript -m https://raw.githubusercontent.com/cookpad/kuroko2/master/app_template.rb
```

And edits "config/kuroko2.yml"

----

## Installation [2001_2500/000201_filestack_filestack-rails.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000201_filestack_filestack-rails.md)

Add this line to your application's `Gemfile`:

```ruby
gem 'filestack-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install filestack-rails

Add the Filestack File Picker and initialization script to your layout:

```erb
<%= filestack_js_include_tag %>
<%= filestack_js_init_tag %>
```
**Please note:** The scripts need to be added before your application's custom scripts, e.g. before any scripts in your assets folder, if you need access the Filestack client in your own Javascript.

Set your API key and client name in `config/application.rb`:

```ruby
config.filestack_rails.api_key = 'Your Filestack API Key'
config.filestack_rails.client_name = 'custom_client_name'
```
The client name defaults to `"filestack_client"` and is injected into your client-side Javascript. This is because v3 of the File Picker lives in the Javascript of your web application.

----

## Installation [2001_2500/000201_thoughtbot_climate_control.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000201_thoughtbot_climate_control.md)

Add this line to your application's Gemfile:

    gem 'climate_control'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install climate_control

----

## Installation [2001_2500/000200_yujinakayama_guard-rubocop.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000200_yujinakayama_guard-rubocop.md)

Please make sure to have [Guard](https://github.com/guard/guard) installed before continue.

Add `guard-rubocop` to your `Gemfile`:

```ruby
group :development do
  gem 'guard-rubocop'
end
```

and then execute:

```sh
$ bundle install
```

or install it yourself as:

```sh
$ gem install guard-rubocop
```

Add the default Guard::RuboCop definition to your `Guardfile` by running:

```sh
$ guard init rubocop
```

----

## Installation [2001_2500/000200_buildkite_terminal.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000200_buildkite_terminal.md)

If you have Go installed you can simply run the following command to install the `terminal-to-html` command into `$GOPATH/bin`:

```bash
$ go get github.com/buildkite/terminal/cmd/terminal-to-html
```

You can also just download the standalone binary from [https://github.com/buildkite/terminal/releases](https://github.com/buildkite/terminal/releases)

----

## Installation [2001_2500/000199_plataformatec_markerb.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000199_plataformatec_markerb.md)

Add it to your Gemfile, with either the `redcarpet` or `kramdown` parser:

```ruby
gem 'markerb'
gem 'redcarpet', '>= 2.0'
# gem 'kramdown'
```

Run the following command to install it:

```console
bundle install
```

----

## Installation [2001_2500/000199_infused_dbf.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000199_infused_dbf.md)

Install the gem manually:

```
gem install dbf
```

Or add to your Gemfile:

```ruby
gem 'dbf'
```

----

## Installation [2001_2500/000199_piotrmurach_tty-progressbar.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000199_piotrmurach_tty-progressbar.md)

Add this line to your application's Gemfile:

```ruby
gem 'tty-progressbar'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tty-progressbar

----

## Installation [2001_2500/000199_nebulab_simple_command.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000199_nebulab_simple_command.md)

Add this line to your application's Gemfile:

```ruby
gem 'simple_command'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_command

----

## Installation [2001_2500/000199_rails_protected_attributes.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000199_rails_protected_attributes.md)

Add this line to your application's `Gemfile`:

    gem 'protected_attributes'

And then execute:

    bundle install

----

## Installation [2001_2500/000199_MightySignal_slackiq.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000199_MightySignal_slackiq.md)

Add this line to your Gemfile:

```ruby
gem 'slackiq'
```

Then run:

```
bundle install
```

----

## Installation [2001_2500/000198_domitry_nyaplot.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000198_domitry_nyaplot.md)
----

## Installation [2001_2500/000197_erichmenge_signed_form.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000197_erichmenge_signed_form.md)

Add this line to your application's Gemfile:

```ruby
gem 'signed_form'
```

And then execute:

    $ bundle

You'll need to include `SignedForm::ActionController::PermitSignedParams` in the  
controller(s) you want to use SignedForm with. This can be done application wide  
by adding the `include` to your ApplicationController.

```ruby
ApplicationController < ActionController::Base
  include SignedForm::ActionController::PermitSignedParams

  # ...
end
```

----

## Installation [2001_2500/000197_rails-engine_notifications.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000197_rails-engine_notifications.md)

```ruby
# Gemfile Rails ~> 5
gem 'notifications', '~> 0.6.0'
# Gemfile for Rails ~> 4.2
gem 'notifications', '~> 0.5.0'
```

And then run `bundle install`.

You now have a notifications generator in your Rails application:

```bash
$ rails g notifications:install
```

You can generate views, controllers if you need to customize them:

```bash
$ rails g notifications:views
$ rails g notifications:controllers
```

----

## Installation [2001_2500/000197_jejacks0n_apitome.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000197_jejacks0n_apitome.md)

Add it to your Gemfile.

```ruby
gem "apitome"
```

Optionally run the install generator to get the initializer and an initial readme file (doc/api.md).

```
rails generate apitome:install
```

Update your `spec_helper.rb` to adjust how RAD outputs its results -- Apitome reads these JSON files to generate the
documentation.

```ruby
RspecApiDocumentation.configure do |config|
  config.format = :json
end
```


----

## Installation [2001_2500/000196_rainforestapp_fourchette.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000196_rainforestapp_fourchette.md)

You have two choices here, the easy path, or the manual path.

**Easy**

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https%3A%2F%2Fgithub.com%2Frainforestapp%2Ffourchette-app)

**Manual**

This will give you more flexibility to create before and after actions, though you could also do it with the easy path and cloning your repo, etc.

1. run `gem install fourchette`
2. run `fourchette new my-app-name`. You can replace "my-app-name" by whatever you want it, this is the name of the directory your Fourchette app will be created in.
3. run `cd my-app-name` (replace app name, again)
4. run `git init && git add . && git commit -m "Initial commit :tada:"`
5. push to Heroku
6. configure the right environment variables (see [#configuration](#configuration))
7. Enable your Fourchette instance

----

## Installation [2001_2500/000196_lassebunk_dynamic_sitemaps.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000196_lassebunk_dynamic_sitemaps.md)

Add this line to your application's Gemfile:

    gem "dynamic_sitemaps"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dynamic_sitemaps

To generate a simple example config file in `config/sitemap.rb`:

    $ rails generate dynamic_sitemaps:install

If you want to use version 1.0 (v1.0.8) of DynamicSitemaps, please see [v1.0.8](https://github.com/lassebunk/dynamic_sitemaps/tree/da0f78ddb1e6a471d6d5715d492295da99f5e682) of the project. Please note that this version isn't good for large sitemaps as it generates them dynamically on each request.

----

## Installation [2001_2500/000195_jaredonline_google-authenticator.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000195_jaredonline_google-authenticator.md)

Add this line to your application's Gemfile:

    gem 'google-authenticator-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install google-authenticator-rails

----

## Installation [2001_2500/000195_thumblemonks_smurf.markdown](https://github.com/ts-3156/readmes/blob/master/2001_2500/000195_thumblemonks_smurf.markdown)

You install Smurf as a gem:

    sudo gem install smurf

Because this latest version is intended to work with Rails 3 and above, you'll need to update your Gemfile ad add:

    gem 'smurf'

Then, wherever you define `javascript_include_tag` or `stylesheet_link_tag`, make sure to add the standard `:cache => true` or `:cache => 'some_bundle'` options.

Also make sure to at least have this setting in your production.rb:

    config.perform_caching = true

----

## Installation ## [2001_2500/000195_DavyJonesLocker_client_side_validations-simple_form.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000195_DavyJonesLocker_client_side_validations-simple_form.md)

In your Gemfile add the following:

```ruby
gem 'simple_form'
gem 'client_side_validations'
gem 'client_side_validations-simple_form'
```

Order matters here. `SimpleForm` and `ClientSideValidations` need to be
required **before** `ClientSideValidations-SimpleForm`.

[Follow the remaining installation instructions for ClientSideValidations](https://github.com/DavyJonesLocker/client_side_validations/blob/master/README.md)

According to the web framework you are using, add **one** of the following lines to `app/assets/javascripts/application.js`

```javascript
// No framework / Generic frameworks / Bootstrap 3
//= require rails.validations.simple_form

// Bootstrap 4
//= require rails.validations.simple_form.bootstrap4
```

Again, order matters. You should add this line after the require for `rails.validations` as described in the `ClientSideValidations` installation instructions.

If the asset pipeline is disabled the asset file will be copied
into `public/javascripts` when the `ClientSideValidations` install generator is run.

At any time you can copy the asset file into your project by running:

```
rails g client_side_validations:copy_assets
```

If the asset pipeline is disabled the asset file will be copied
into `public/javascripts`. Otherwise the asset file will be copied into
`app/assets/javascripts` (or whatever asset directory you have
defined)

----

## Installation [2001_2500/000194_yuroyoro_git-issue.markdown](https://github.com/ts-3156/readmes/blob/master/2001_2500/000194_yuroyoro_git-issue.markdown)

    $ gem install git-issue

    or

    $ git clone https://github.com/yuroyoro/git-issue.git
    $ cd git-issue
    $ gem install jeweler
    $ rake install

----

## Installation [2001_2500/000194_mikker_passwordless.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000194_mikker_passwordless.md)

Add the `passwordless` gem to your `Gemfile`:

```ruby
gem 'passwordless'
```

Install it and copy over the migrations:

```sh
$ bundle
$ bin/rails passwordless:install:migrations
```

----

## Installation [2001_2500/000193_basecamp_google_sign_in.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000193_basecamp_google_sign_in.md)

Add `google_sign_in` to your Rails app’s Gemfile and run `bundle install`:

```ruby
gem 'google_sign_in'
```

Google Sign-In for Rails requires Rails 5.2 or newer.


----

## Installation [2001_2500/000193_Aufree_bootstrap-material-design.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000193_Aufree_bootstrap-material-design.md)

Add this line to your application's Gemfile:

    gem 'bootstrap-material-design'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bootstrap-material-design

----

## Installation [2001_2500/000193_soveran_mote.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000193_soveran_mote.md)

You can install it using rubygems.

```
$ gem install mote
```
----

## Installation [2001_2500/000193_waiting-for-dev_devise-jwt.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000193_waiting-for-dev_devise-jwt.md)

Add this line to your application's Gemfile:

```ruby
gem 'devise-jwt', '~> 0.5.8'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install devise-jwt

----

## Installation [2001_2500/000192_spacialdb_fcm.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000192_spacialdb_fcm.md)

    $ gem install fcm

or in your `Gemfile` just include it:

```ruby
gem 'fcm'
```

----

## Installation [2001_2500/000192_mavenlink_brainstem.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000192_mavenlink_brainstem.md)

Add this line to your application's Gemfile:

    gem 'brainstem'

----

## Installation [2001_2500/000192_PerfectlyNormal_highcharts-rails.markdown](https://github.com/ts-3156/readmes/blob/master/2001_2500/000192_PerfectlyNormal_highcharts-rails.markdown)

Add the gem to the Gemfile

    gem "highcharts-rails"
    # The gem version mirrors the included version of Highcharts

----

## Installation [2001_2500/000192_ccocchi_rabl-rails.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000192_ccocchi_rabl-rails.md)

Install as a gem :

```
gem install rabl-rails
```

or add directly to your `Gemfile`

```
gem 'rabl-rails'
```

And that's it !

----

## Installation [2001_2500/000192_vigetlabs_sprig.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000192_vigetlabs_sprig.md)

Add into your Gemfile
```ruby
gem "sprig"
```
Use `rails generate sprig:install` to create environment-specific and shared seed directories.

----

## Installation [2001_2500/000191_alienfast_elastic-beanstalk.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000191_alienfast_elastic-beanstalk.md)

Add this line to your application's Gemfile:

    gem 'elastic-beanstalk'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install elastic-beanstalk

----

## Installation [2001_2500/000191_jmazzi_crypt_keeper.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000191_jmazzi_crypt_keeper.md)

Add this line to your application's Gemfile:

    gem 'crypt_keeper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install crypt_keeper


----

## Installation [2001_2500/000190_chesterhow_tale.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000190_chesterhow_tale.md)
There are 3 ways to install this theme

1. Install it as a Ruby Gem (for self-hosted sites)
2. Install it with the `jekyll-remote-theme` plugin (for GitHub Pages hosted sites)
3. Fork the project directly

----

## Installation ## [2001_2500/000190_raw1z_amistad.markdown](https://github.com/ts-3156/readmes/blob/master/2001_2500/000190_raw1z_amistad.markdown)

Add the following line in your Gemfile:

    gem 'amistad'

Then run:

    bundle install

----

## Installation [2001_2500/000190_markolson_kickscraper.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000190_markolson_kickscraper.md)

    $ gem install kickscraper

Or for use in another app, add it to your Gemfile

    # use the gem
    gem 'kickscraper'
    
    # or stay up to date with the repo (which should be stable)
    gem 'kickscraper', :git => 'git://github.com/markolson/kickscraper.git' 


----

## Installation [2001_2500/000189_jgraichen_rails-timeago.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000189_jgraichen_rails-timeago.md)

Add this line to your application's `Gemfile`:

```ruby
gem 'rails-timeago', '~> 2.0'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-timeago

To use bundled jQuery Timeago plugin add this require statement to your `application.js` file:

    //= require rails-timeago

This will also convert all matching time tags on page load.

Use the following to also include all available locale files:

    //= require rails-timeago-all

----

## Installation [2001_2500/000189_ankane_field_test.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000189_ankane_field_test.md)

Add this line to your application’s Gemfile:

```ruby
gem "field_test"
```

Run:

```sh
rails g field_test:install
```

And mount the dashboard in your `config/routes.rb`:

```ruby
mount FieldTest::Engine, at: "field_test"
```

Be sure to [secure the dashboard](#security) in production.

![Screenshot](https://ankane.github.io/field_test/screenshot6.png)

----

## Installation [2001_2500/000188_socky_socky-server-ruby.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000188_socky_socky-server-ruby.md)

``` bash
$ gem install socky-server --pre
```

----

## Installation [2001_2500/000188_jkraemer_pdf-forms.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000188_jkraemer_pdf-forms.md)

You'll need a working `pdftk` binary. Either get a binary package from
http://www.pdflabs.com/tools/pdftk-server/ and install it, or run
`apt-get install pdftk` if you're on Debian or similar.

After that, add `pdf-forms` to your Gemfile or manually install the gem. Nothing
unusual here.


----

## Installation [2001_2500/000188_flyerhzm_redis-sentinel.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000188_flyerhzm_redis-sentinel.md)

Add this line to your application's Gemfile:

    gem 'redis-sentinel'

If you are using redis-server less than 2.6.10, please use
redis-sentinel 1.3.0

    gem 'redis-sentinel', '~> 1.3.0'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install redis-sentinel

----

## Installation [2001_2500/000187_lebedev-yury_carrierwave-base64.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000187_lebedev-yury_carrierwave-base64.md)

Add the gem to your Gemfile:

```ruby
gem 'carrierwave-base64'
```

Also add this if you need mongoid support:

```ruby
gem "carrierwave-mongoid"
```

----

## Installation [2001_2500/000187_janfoeh_paperclip-optimizer.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000187_janfoeh_paperclip-optimizer.md)

Add this line to your application's Gemfile after the Paperclip gem:

    gem 'paperclip-optimizer'

And then execute:

    $ bundle
    
If you wish to set global configuration settings, run

    $ rails generate paperclip_optimizer:install
    
to generate an initializer in config/initializers.

----

## Installation [2001_2500/000187_at-import_animation-studio.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000187_at-import_animation-studio.md)

`gem install animation-studio`

----

## Installation [2001_2500/000187_domnikl_highscore.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000187_domnikl_highscore.md)

* `[sudo] gem install highscore`

For better blacklist perfomance, use the `bloomfilter-rb` gem:

* `[sudo] gem install bloomfilter-rb`

To use word stemming, you need to have the `fast-stemmer` (C extension) or `stemmer` gem installed:

* `[sudo] gem install fast-stemmer`
* `[sudo] gem install stemmer`

----

## Installation [2001_2500/000186_halo_macosvpn.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000186_halo_macosvpn.md)

If you have [Homebrew](http://brew.sh) installed, you can simply start a Terminal and run:

```bash
# See https://github.com/Homebrew/homebrew-core/search?q=macosvpn&type=Issues
brew install macosvpn
```

If not, you can run this curl command to get the compiled executable from Github:

```bash
# Make sure first that the directory /usr/local/bin exists
sudo bash -c "curl -L https://github.com/halo/macosvpn/releases/download/0.3.1/macosvpn > /usr/local/bin/macosvpn"
sudo chmod +x /usr/local/bin/macosvpn
```

If that freaks you out (it should), you can compile it yourself if you have Xcode installed:

```bash
git clone https://github.com/halo/macosvpn.git
cd macosvpn
xcodebuild -configuration Debug
build/Debug/macosvpn
```

You can always run `macosvpn --version` to see the version currently installed on your system
and compare it to [the latest available version](https://github.com/halo/macosvpn/releases) on Github.

----

## Installation [2001_2500/000186_railsware_rack_session_access.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000186_railsware_rack_session_access.md)

```ruby
gem install rack_session_access
```

----

## Installation [2001_2500/000185_education_teachers_pet.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000185_education_teachers_pet.md)

[Install Ruby 1.9.3+](https://www.ruby-lang.org/en/installation/), then run

```bash
gem install teachers_pet
```

If you've used this tool before, get the newest version using

```ruby
gem update teachers_pet
```

To use the latest-and-greatest code from this repository, see the instructions in [CONTRIBUTING.md](CONTRIBUTING.md).

----

## Installation [2001_2500/000184_capistrano_laravel.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000184_capistrano_laravel.md)

If managing your Capistrano deploy as a ruby project, add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.0.0'
gem 'capistrano-laravel'
```

And then execute:

```shell
bundle
```

Or install it yourself as:

```shell
gem install capistrano-laravel
```

----

## Installation [2001_2500/000184_forgecrafted_ruby-stylus.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000184_forgecrafted_ruby-stylus.md)

If you have a `Gemfile`:

```
gem 'stylus'
```

or install it on your system:

```
gem install stylus
```

The [ruby-stylus-source](https://github.com/forgecrafted/ruby-stylus-source) packages the Stylus source into a gem, and is installed as a dependency of this gem.  Versions of `ruby-stylus-source` follow Stylus releases and their versions.

You can manually replace the Stylus code by placing another version of Stylus on `./node_modules/stylus`, and it will be used instead of the version bundled inside the gem.

**REMEMBER**, you still need the `node` command available on your runtime for this gem to work. This gem is also compatible with the Heroku Cedar stack, enabling asset compilation during the deployment of your apps. You can check the [Node.js wiki](https://github.com/joyent/node/wiki/Quick-and-easy-installation) for more info.

----

## Installation [2001_2500/000184_lgromanowski_acme-plugin.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000184_lgromanowski_acme-plugin.md)

For detailed installation guide please visit [Installation-guide](https://github.com/lgromanowski/acme-plugin/wiki/Installation-guide) wiki page.

----

## Installation [2001_2500/000184_ClosureTree_with_advisory_lock.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000184_ClosureTree_with_advisory_lock.md)

Add this line to your application's Gemfile:

```ruby
gem 'with_advisory_lock'
```

And then execute:

    $ bundle

----

## Installation [2001_2500/000183_webnuts_post_json.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000183_webnuts_post_json.md)

Add the gem to your `Gemfile`:

    gem 'post_json'

Then:

    $ bundle install

Run the generator and migrate the db:

    $ rails g post_json:install
    $ rake db:migrate
        
That's it!

(See POSTGRESQL_INSTALL.md if you need the install instructions for PostgreSQL with PLV8)

----

## Installation [2001_2500/000183_jonmagic_grim.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000183_jonmagic_grim.md)

```bash
$ gem install grim
```

----

## Installation [2001_2500/000182_skyeagle_nested_set.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000182_skyeagle_nested_set.md)

The plugin is available as a gem:

    gem 'nested_set'

Or install as a plugin:

    rails plugin install git://github.com/skyeagle/nested_set.git

----

## Installation [2001_2500/000182_chamnap_themes_on_rails.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000182_chamnap_themes_on_rails.md)

The simplest way to install is to use Bundler.

Add this gem to your Gemfile:

    gem 'themes_on_rails'

If you want to use `themes_on_rails` with `liquid` template, add one more gem to your Gemfile:

    gem 'liquid-rails'

Then, use Bundler to install the gem and its dependencies:

    $ bundle install

----

## Installation [2001_2500/000182_castle_ruby-u2f.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000182_castle_ruby-u2f.md)

Add the `u2f` gem to your `Gemfile`

```ruby
gem 'u2f'
```

----

## Installation [2001_2500/000182_krautcomputing_services.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000182_krautcomputing_services.md)

Add this line to your application's Gemfile:

    gem 'services'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install services

----

## Installation [2001_2500/000182_Shopify_turbograft.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000182_Shopify_turbograft.md)

* Replace `gem "turbolinks"` with `gem "turbograft"` in your Gemfile
* Replace `//= require turbolinks` with `//= require turbograft` in _app/assets/javascripts/application.js_
* Run `bundle install`

----

## Installation — get your Cape on [2001_2500/000182_njonsson_cape.markdown](https://github.com/ts-3156/readmes/blob/master/2001_2500/000182_njonsson_cape.markdown)

Install [the RubyGem](http://rubygems.org/gems/cape "Cape at RubyGems.org").

    $ gem install cape

Or you may want to make Cape a dependency of your project by using [Bundler](http://gembundler.com).

    # Gemfile

    source 'http://rubygems.org'

    gem 'cape', '~> 1'

----

## Installation [2001_2500/000181_ejholmes_active_admin_editor.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000181_ejholmes_active_admin_editor.md)

Add the following to your `Gemfile`:

```ruby
gem 'active_admin_editor'
```

And include the wysiwyg styles in your `application.css`:

```scss
//= require active_admin/editor/wysiwyg
```

Then run the following to install the default intializer:

```bash
$ rails g active_admin:editor
```

----

## Installation [2001_2500/000181_russfrisch_modernizr-rails.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000181_russfrisch_modernizr-rails.md)

----

## Installation [2001_2500/000181_piotrmurach_github_cli.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000181_piotrmurach_github_cli.md)

Add this line to your application's Gemfile:

    gem 'github_cli'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install github_cli

----

## Installation [2001_2500/000181_lukaszkorecki_CoffeeTags.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000181_lukaszkorecki_CoffeeTags.md)

`gem install CoffeeTags` (or `sudo gem install CoffeeTags`)

----

## Installation [2001_2500/000181_tjackiw_obscenity.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000181_tjackiw_obscenity.md)

Add this line to your application's Gemfile:

```ruby
gem 'obscenity'
```

And then execute:

```ruby
bundle install
```

Or install it yourself as:

```ruby
gem install obscenity
```

----

## Installation [2001_2500/000181_opal_opal-jquery.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000181_opal_opal-jquery.md)

Install opal-jquery from RubyGems:

```
$ gem install opal-jquery
```

Or include it in your Gemfile for Bundler:

```ruby
gem 'opal-jquery'
```




----

## Installation [2001_2500/000181_aetherknight_recursive-open-struct.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000181_aetherknight_recursive-open-struct.md)

Available as a gem in rubygems, the default gem repository.

If you use bundler, just add recursive-open-struct to your gemfile :

```ruby
gem 'recursive-open-struct'
```

You may also install the gem manually:

    gem install recursive-open-struct


----

## Installation [2001_2500/000181_activeadmin_activeadmin-mongoid.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000181_activeadmin_activeadmin-mongoid.md)

----

## Installation [2001_2500/000180_pangloss_pacer.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000180_pangloss_pacer.md)

Install dependencies:

 * [JRuby 1.7.x](http://jruby.org/)     
   __Recommended:__ Use [RVM](https://rvm.io/) to install and manage all Ruby (and JRuby) versions on your machine.
 * [RubyGems](https://rubygems.org/)

Install Pacer:

```
gem install pacer
```

----

## Installation [2001_2500/000180_ondra-m_ruby-spark.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000180_ondra-m_ruby-spark.md)

----

## Installation ## [2001_2500/000179_bcardarella_valid_attribute.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000179_bcardarella_valid_attribute.md)

If you're using `RSpec` just add the `valid_attribute` to your `Gemfile` AFTER rspec gem.

```ruby
gem 'valid_attribute'
```

Then add it to your `spec_helper.rb`

```ruby
require 'valid_attribute'
```

or if you're using `Test::Unit`, you must use [Thoughtbot](http://thoughtbot.com)'s [shoulda-context](https://github.com/thoughtbot/shoulda-context)

```ruby
# Gemfile
gem 'shoulda-context'

# test_helper.rb
require 'shoulda-context'
require 'valid_attribute'
```

If you want to you use it with `MiniTest::Spec` you can use either `shoulda-context` (see above) or [minitest-matchers](https://github.com/zenspider/minitest-matchers):

```ruby
# Gemfile
gem 'minitest-matchers'

# test_helper.rb
require 'valid_attribute'
```

----

## Installation [2001_2500/000179_forward3d_cap-ec2.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000179_forward3d_cap-ec2.md)

    gem install cap-ec2

or add the gem to your project's Gemfile.

You also need to add the gem to your Capfile:

```ruby
require "cap-ec2/capistrano"
```


----

## Installation: [2001_2500/000178_jingweno_jekyll_and_hyde.markdown](https://github.com/ts-3156/readmes/blob/master/2001_2500/000178_jingweno_jekyll_and_hyde.markdown)

	> gem install jekyll_and_hyde

----

## Installation [2001_2500/000178_eagletmt_faml.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000178_eagletmt_faml.md)

Add this line to your application's Gemfile:

```ruby
gem 'faml'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install faml

----

## Installation [2001_2500/000178_iblue_d3-rails.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000178_iblue_d3-rails.md)

Add this line to your `Gemfile`:

    gem "d3-rails"

Please note that D3 is provided via the asset pipeline and you do *not*
need to copy their files into your application. Rails will get them from
d3-rails automatically.

Then add it to your manifest file, most probably at
`app/assets/javascripts/application.js`:

    //= require d3

----

## Installation [2001_2500/000178_y310_kodama.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000178_y310_kodama.md)

Add this line to your application's Gemfile:

    gem 'kodama'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kodama

----

## Installation [2001_2500/000178_mtsmfm_language_server-ruby.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000178_mtsmfm_language_server-ruby.md)

If you are using vscode, install [ruby-lsc](https://marketplace.visualstudio.com/items?itemName=mtsmfm.ruby-lsc) extension.

----

## Installation [2001_2500/000178_apiaryio_apiary-client.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000178_apiaryio_apiary-client.md)

----

## Installation [2001_2500/000178_dmarkow_jquery-mobile-rails.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000178_dmarkow_jquery-mobile-rails.md)

Add this gem to your Gemfile:

    gem 'jquery_mobile_rails'

This will add jQuery Mobile's javascripts, stylesheets and images to your app. It will also set up the asset pipeline to precompile these assets for production.

Include jquery.mobile (or jquery.mobile.min) in your `application.js` manifest:

    //= require jquery
    //= require jquery_ujs
    //= require jquery.mobile

And the same in your `application.css` manifest:

    *= require_self
    *= require_tree .
    *= require jquery.mobile

__NOTE:__ You should probably remove Turbolinks from your `application.js` manifest, as it likely won't work well with jQuery Mobile.

----

## Installation [2001_2500/000177_gevans_sidekiq-throttler.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000177_gevans_sidekiq-throttler.md)

Add this line to your application's Gemfile:

```ruby
gem 'sidekiq-throttler'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sidekiq-throttler

----

## Installation [2001_2500/000177_aaronjensen_sass-media_query_combiner.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000177_aaronjensen_sass-media_query_combiner.md)

Requires Ruby >= 1.9.2.

Add this line to your application's Gemfile:

    gem 'sass-media_query_combiner'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sass-media_query_combiner

----

## Installation [2001_2500/000177_SamSaffron_lru_redux.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000177_SamSaffron_lru_redux.md)

Add this line to your application's Gemfile:

    gem 'lru_redux'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lru_redux

Ruby 1.8 - v0.8.4 is the last compatible release:

    gem 'lru_redux', '~> 0.8.4'

----

## Installation [2001_2500/000176_collectiveidea_delayed_job_mongoid.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000176_collectiveidea_delayed_job_mongoid.md)

Add the gem to your Gemfile:

    gem 'delayed_job_mongoid'

Create the indexes (and don't forget to do this on your production database):

    script/rails runner 'Delayed::Backend::Mongoid::Job.create_indexes'

To generate `script/delayed_job`:

    rails generate delayed_job

That's it. Use [delayed_job](http://github.com/collectiveidea/delayed_job) as
normal.
----

## Installation / Getting started [2001_2500/000176_benschwarz_amnesia.markdown](https://github.com/ts-3156/readmes/blob/master/2001_2500/000176_benschwarz_amnesia.markdown)

    gem install amnesia

----

## Installation [2001_2500/000176_mptre_rails-iphone-helpers.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000176_mptre_rails-iphone-helpers.md)

Add this line to your application's Gemfile:

----

## Installation [2001_2500/000175_nesaulov_surrealist.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000175_nesaulov_surrealist.md)
Add this line to your application's Gemfile:

``` ruby
gem 'surrealist'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install surrealist


----

## Installation [2001_2500/000175_kostyantyn_hydra_attribute.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000175_kostyantyn_hydra_attribute.md)

Add the following line to Gemfile:
```ruby
gem 'hydra_attribute'
# or for rails 4
# gem 'hydra_attribute', github: 'kostyantyn/hydra_attribute', branch: 'rails4'
# or for rails 4.1
# gem 'hydra_attribute', github: 'kostyantyn/hydra_attribute', branch: 'rails4.1'
```
and run `bundle install` from your shell.
    
Then we should generate our migration:
```shell
rails generate migration create_hydra_attributes
```    
The content should be:
```ruby    
class CreateHydraAttributeTables < ActiveRecord::Migration
  def up
    create_hydra_entity :products do |t|
      # add here all other columns that should be in the entity table
      t.timestamps
    end
  end
      
  def down
    drop_hydra_entity :products
  end
end
```

**or if we have the entity table already**

```ruby    
class CreateHydraAttributeTables < ActiveRecord::Migration
  def up
    migrate_to_hydra_entity :products
  end
      
  def down
    rollback_from_hydra_entity :products
  end
end
```

----

## Installation [2001_2500/000175_eagletmt_hako.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000175_eagletmt_hako.md)

Add this line to your application's Gemfile:

```ruby
gem 'hako'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hako

----

## Installation [2001_2500/000175_jsanders_angular_rails_csrf.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000175_jsanders_angular_rails_csrf.md)

Add this line to your application's *Gemfile*:

    gem 'angular_rails_csrf'

And then execute:

    $ bundle

That's it!

----

## Installation [2001_2500/000175_jgv_area.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000175_jgv_area.md)

In your gemfile: `gem 'area'`

----

## Installation [2001_2500/000175_bradurani_pg-eyeballs.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000175_bradurani_pg-eyeballs.md)

Add this line to your application's Gemfile:

```ruby
gem 'pg-eyeballs'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pg-eyeballs

----

## Installation [2001_2500/000174_capistrano_bundler.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000174_capistrano_bundler.md)

Add these lines to your application's Gemfile **[Recommended]**:

```ruby
gem 'capistrano', '~> 3.6'
gem 'capistrano-bundler', '~> 1.5'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install capistrano-bundler
```

----

## Installation [2001_2500/000174_supermarin_xclisten.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000174_supermarin_xclisten.md)

```
$ gem install xclisten
```

----

## Installation [2001_2500/000174_tmlee_time_difference.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000174_tmlee_time_difference.md)

Add this line to your application's Gemfile:

```ruby
gem 'time_difference'
```

And then execute:

```bash
$ bundle install
```

----

## Installation [2001_2500/000173_evrone_factory_girl-seeds.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000173_evrone_factory_girl-seeds.md)

Add this line to your application's Gemfile:

```ruby
group :test do
  gem 'factory_girl-seeds'
end
```

----

## Installation [2001_2500/000173_mwunsch_rumoji.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000173_mwunsch_rumoji.md)

    gem install rumoji

Note that rumoji has only been tested in Rubies >= 1.9!!!

----

## Installation [2001_2500/000173_cupakromer_emoji-rspec.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000173_cupakromer_emoji-rspec.md)

**Note**: Stuck on Ruby 1.8.7? :grimacing: See [0.x version](#0x) end of life note.

Add this line to your application's Gemfile:

    group :test do
      gem 'emoji-rspec'
    end

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install emoji-rspec

If you want to always have it included, add it to the top of your `.rspec` file:

    # .rspec
    --require emoji-rspec

----

## Installation [2001_2500/000172_nomad_nashville.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000172_nomad_nashville.md)

    $ gem install nashville

----

## Installation [2001_2500/000172_vitalie_webshot.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000172_vitalie_webshot.md)

Download and install [PhantomJS](http://phantomjs.org/releases.html) version 2.X,
add the directory containing the binary to your PATH.

Add the `webshot` gem to your Gemfile:

    gem "webshot"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install webshot

----

## Installation [2001_2500/000172_nov_json-jwt.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000172_nov_json-jwt.md)

```
gem install json-jwt
```

----

## Installation [2001_2500/000172_neoid-gem_neoid.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000172_neoid-gem_neoid.md)

Add to your Gemfile and run the `bundle` command to install it.

```ruby
gem 'neoid'
```

**Requires Ruby 1.9.3 or later and Neo4j 1.9.8.**

----

## Installation [2001_2500/000172_mmistakes_jekyll-theme-basically-basic.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000172_mmistakes_jekyll-theme-basically-basic.md)

If you're running Jekyll v3.5+ and self-hosting you can quickly install the 
theme as a Ruby gem. If you're hosting with GitHub Pages you can install as a 
remote theme or directly copy all of the theme files (see [structure](#structure) 
below) into your project.

----

## Installation [2001_2500/000171_trishume_pro.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000171_trishume_pro.md)

`pro` is bundled as a Ruby gem. To install run:

    $ gem install pro

You may also want to set your Pro Base. See the above section.

----

## Installation [2001_2500/000171_kamilc_email_verifier.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000171_kamilc_email_verifier.md)

Add this line to your application's Gemfile:

    # place it at the bottom of rails/activesupport if you're working with them.
    gem 'email_verifier'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install email_verifier

----

## Installation [2001_2500/000171_capistrano_composer.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000171_capistrano_composer.md)

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.1.0'
gem 'capistrano-composer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-composer

----

## Installation [2001_2500/000171_ahuth_emcee.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000171_ahuth_emcee.md)

Add Emcee to your Gemfile:

    gem 'emcee'

and then execute:

    $ bundle install

Finally, run:

    $ rails generate emcee:install

This will insert `<%= html_import_tag "application" %>` into your application layout. Also,
it will create 'components' directories under '/assets' and '/vendor/assets'.

----

## Installation [2001_2500/000171_AccessLint_accesslint.rb.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000171_AccessLint_accesslint.rb.md)

First, install PhantomJS ([full guide](http://phantomjs.org/)). On OS X:

    $ brew install phantomjs

Then install the rubygem:

    $ gem install access_lint

----

## Installation [2001_2500/000171_invernizzi_vagrant-scp.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000171_invernizzi_vagrant-scp.md)

You need to install the plugin, like so

    vagrant plugin install vagrant-scp

----

## Installation [2001_2500/000170_brigade_haml-lint.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000170_brigade_haml-lint.md)

```bash
gem install haml_lint
```

If you'd rather install `haml-lint` using `bundler`, don't `require` it in your `Gemfile`:

```ruby
gem 'haml_lint', require: false
```

Then you can still use `haml-lint` from the command line, but its source code won't be auto-loaded inside your application.

----

## Installation [2001_2500/000170_vasinov_jruby_mahout.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000170_vasinov_jruby_mahout.md)
----

## Installation [2001_2500/000170_byroot_bootscale.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000170_byroot_bootscale.md)

```ruby
# Gemfile
gem 'bootscale', require: false
```

----

## Installation [2001_2500/000170_khiav223577_deep_pluck.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000170_khiav223577_deep_pluck.md)

Add this line to your application's Gemfile:

```ruby
gem 'deep_pluck'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install deep_pluck

----

## Installation [2001_2500/000170_linjunpop_imessage.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000170_linjunpop_imessage.md)

----

## Installation [2001_2500/000170_bobbytables_table_cloth.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000170_bobbytables_table_cloth.md)

Add this line to your application's Gemfile:

```ruby
gem 'table_cloth'
```

And then execute:

    $ bundle

----

## Installation [2001_2500/000169_mdespuits_dotify.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000169_mdespuits_dotify.md)

Run this command in the command line to install Dotify:

    $ gem install dotify

## Installation [2001_2500/000169_mdespuits_dotify.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000169_mdespuits_dotify.md)

To install Dotify, you must first run `dotify install` in your terminal.

    $ dotify install
        create /Users/computer-user/.dotify
        create /Users/computer-user/.dotrc
    Editing config file...
    Do you want to link .bashrc to the home directory? [Yn] n
        linked  /Users/computer-user/.bashrc
    Do you want to link .dotrc to the home directory? [Yn] n
        linked  /Users/computer-user/.dotrc
    Do you want to add .railsrc to Dotify? [Yn] n
        linked  /Users/computer-user/.railsrc
    Do you want to add .zshrc to Dotify? [Yn] n
        linked  /Users/computer-user/.zshrc
    ...

This will first create a `.dotify` directory in your home directory as well as a `.dotrc` file for Dotify configuration (yes, it is more dotfiles, but this is a good thing!).

During the installation process, a Vim instance will open with a sample `.dotrc` file for you to edit and configure if you desire. This will allow your configuration to be used prior to Dotify's full installation. See more about the `.dotrc` file in the [Configuration](#configuration) section.

Alternatively, you could run `dotify setup` to setup Dotify's configuration, followed by `dotify install` to add the initial files into Dotify.

----

## Installation [2001_2500/000169_wingrunr21_flat-ui-sass.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000169_wingrunr21_flat-ui-sass.md)

----

## Installation [2001_2500/000169_matthewrobertson_ress.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000169_matthewrobertson_ress.md)

Add this line to your application's Gemfile:

    gem 'ress'

And then execute:

    $ bundle install

Run the generator:

    $ rails g ress:install

----

## Installation [2001_2500/000168_ifad_data-confirm-modal.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000168_ifad_data-confirm-modal.md)

Add this line to your application's Gemfile:

    gem 'data-confirm-modal'

The library supports Bootstrap 3 and 4. If you are stuck on Bootstrap 2.3, you must
use the `bootstrap2` branch:

    gem 'data-confirm-modal', github: 'ifad/data-confirm-modal', branch: 'bootstrap2'

Then execute:

    $ bundle

And then require the Javascript from your `application.js`:

    //= require data-confirm-modal

----

## Installation [2001_2500/000168_skorks_escort.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000168_skorks_escort.md)

Add this line to your application's Gemfile:

    gem 'escort'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install escort

----

## Installation [2001_2500/000168_fgrehm_vagrant-notify.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000168_fgrehm_vagrant-notify.md)

Make sure you have Vagrant 1.4+ around and run:

```terminal
$ vagrant plugin install vagrant-notify
```


----

## Installation [2001_2500/000168_meltingice_git-lfs-s3.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000168_meltingice_git-lfs-s3.md)

Git LFS S3 is available on RubyGems.

``` bash
gem install git-lfs-s3
```

Or add it to your Gemfile if you wish to bundle it as a part of another application.

``` ruby
gem 'git-lfs-s3'
```

----

## Installation [2001_2500/000168_lml_commontator.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000168_lml_commontator.md)

There are 4 steps you must follow to install commontator:

1. Gem

  Add this line to your application's Gemfile:

  ```rb
  gem 'commontator', '~> 5.1.0'
  ```

  And then execute:

  ```sh
  $ bundle install
  ```

2. Initializer and Migration

  Run the following command to copy commontator's initializer and migration to your app:

  ```sh
  $ rake commontator:install
  ```

  Or alternatively:

  ```sh
  $ rake commontator:install:initializers

  $ rake commontator:install:migrations
  ```

  And then execute:

  ```sh
  $ rake db:migrate
  ```

3. Configuration

  Change commontator's configurations to suit your needs by editing `config/initializers/commontator.rb`.
  Make sure to check that your configuration file is up to date every time you update the gem, as available options can change with each minor version.
  If you have deprecated options in your initializer, Commontator will issue warnings (usually printed to your console).

4. Routes

  Add this line to your Rails application's `routes.rb` file:

  ```rb
  mount Commontator::Engine => '/commontator'
  ```

  You can change the mount path if you would like a different one.

5. Stylesheets

  In order to display comment threads properly,
  you must add the following to your `application.css`:

  ```css
  *= require commontator/application
  ```

----

## Installation [2001_2500/000168_zigotto_googl.markdown](https://github.com/ts-3156/readmes/blob/master/2001_2500/000168_zigotto_googl.markdown)

```console
gem install googl
```

----

## Installation [2001_2500/000168_mobomo_green_onion.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000168_mobomo_green_onion.md)

If you want to use [capybara-webkit](https://github.com/thoughtbot/capybara-webkit), you'll need to get Qt built in your testing environment. [Follow these steps](https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit) and `gem install capybara-webkit` to get it up and running. Overwise, you can just use `'selenium'` (or another driver) in the configuration block.

Add this line to your application's Gemfile:

    gem 'green_onion'

And then execute:

    bundle

Or install it yourself as:

    gem install green_onion

----

## Installation [2001_2500/000167_sosedoff_goodreads.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000167_sosedoff_goodreads.md)

Install gem with rubygems:

```
gem install goodreads
```

Or manually:

```
rake install
```

----

## Installation [2001_2500/000167_dieb_browserlog.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000167_dieb_browserlog.md)

The simplest way to install Browserlog is to use [Bundler](http://bundler.io).

```ruby
gem 'browserlog', '~> 0.0.2'
```

Browserlog is bundled as a Rails engine. Mount it on `config/routes.rb`.

```ruby
MyApp::Application.routes.draw do
  mount Browserlog::Engine => '/logs'
end
```

With this setup ``logs/development``, ``logs/staging``, ``logs/production`` and ``logs/test`` are automatically available on the browser.

----

## Installation [2001_2500/000167_davidcelis_spec-me-maybe.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000167_davidcelis_spec-me-maybe.md)

Add this line to your application's Gemfile:

```ruby
gem 'spec-me-maybe'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install spec-me-maybe
```

Then, in your `spec_helper.rb` file:

```ruby
require 'rspec/maybes'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    # Enable the `maybe` syntax from spec-me-maybe, e.g.:
    #   maybe(actual).will eq(expected)
    expectations.syntax = :maybe
  end
end
```

----

## Installation [2001_2500/000167_jedcn_reveal-ck.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000167_jedcn_reveal-ck.md)

`reveal-ck` is delivered as a RubyGem, and so, you need Ruby 2.0+ and
then installing should be as easy as:

    gem install reveal-ck

Verify that things are functional and you have the latest version of
reveal-ck by typing:

    reveal-ck --version

----

## Installation [2001_2500/000166_torba-rb_torba.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000166_torba-rb_torba.md)

----

## Installation [2001_2500/000165_Nexmo_nexmo-ruby.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000165_Nexmo_nexmo-ruby.md)

To install the Ruby client library using Rubygems:

    gem install nexmo

Alternatively you can clone the repository:

    git clone git@github.com:Nexmo/nexmo-ruby.git


----

## Installation [2001_2500/000165_agoragames_stache.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000165_agoragames_stache.md)

    gem "mustache" # or "handlebars"
    gem "stache"

Install the gem. If you want to override any of the configuration options (see `stache/config`), toss an initializer in `config/initializers` and:

```ruby
Stache.configure do |c|
  # This is probably the one you'll want to change
  # it defaults to app/templates
  c.template_base_path = "..."

  # This lets you indicate the name of a module that
  # namespaces all your view classes, useful, if you
  # have a naming conflict, such as with a mailer
  c.wrapper_module_name = "..."

  # N.B. YOU MUST TELL STACHE WHICH TO USE:
  c.use :mustache
  # and / or
  c.use :handlebars

  # Set it to true if template path should be included in
  # script's id tag as a underscored prefix. It can be
  # overwritten by an id param in `#template_include_tag`.
  c.include_path_in_id = false

  # Caching (new in 1.1.0, Mustache-only for now)
  # Any ActiveSupport::Cache should work fine.
  # If you enable this in development, you will lose automagical template reloading!
  c.template_cache = ActiveSupport::Cache::MemoryStore.new if Rails.env.production?
end

# or if the block style ain't yer thang, just:
Stache.template_base_path = File.join(Rails.root, "app", "şablon")
Stache.template_cache = ActiveSupport::Cache::MemoryStore.new if Rails.env.production?
```

----

## Installation [2001_2500/000165_gshutler_browser_details.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000165_gshutler_browser_details.md)

Add this line to your application's Gemfile:

    gem 'browser_details'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install browser_details

----

## Installation [2001_2500/000165_socketry_async.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000165_socketry_async.md)

Add this line to your application's Gemfile:

```ruby
gem "async"
```

And then execute:

	$ bundle

Or install it yourself as:

	$ gem install async

----

## Installation [2001_2500/000165_gdotdesign_elm-github-install.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000165_gdotdesign_elm-github-install.md)

If you have ruby installed on your machine then you can install it directly from
[rubygems.org](https://rubygems.org/gems/elm_install):
```
gem install elm_install
```

If you have node.js installed on your machine then you can install it directly from
[npm](https://www.npmjs.com/package/elm-github-install):

```
npm install elm-github-install -g
```

or with [yarn](https://yarnpkg.com/en/):

```
yarn global add elm-github-install
```

If you are experiencing `EACCES: permission denied` errors during installation
using NPM then you can try:

```
sudo npm i -g elm-github-install --unsafe-perm=true --allow-root
```

There are also dependency free versions available for every release in the
[releases page](https://github.com/gdotdesign/elm-github-install/releases).

----

## Installation [2001_2500/000164_drecom_activerecord-turntable.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000164_drecom_activerecord-turntable.md)

Add to Gemfile:

```ruby
gem 'activerecord-turntable', '~> 4.4.1'
```

Run a bundle install:

```ruby
bundle install
```

Run install generator:

```bash
bundle exec rails g active_record:turntable:install
```

generator creates `#{Rails.root}/config/turntable.yml`

----

## Installation [2001_2500/000164_goshakkk_sleek.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000164_goshakkk_sleek.md)

The easiest way to install Sleek is to add it to your Gemfile:

```ruby
gem "sleek"
```

Or, if you want the latest hotness:

```ruby
gem "sleek", github: "goshakkk/sleek"
```

Then, install it:

```bash
$ bundle install
```

Sleek requires MongoDB to work and assumes that you have Mongoid
configured already.

Finally, create needed indexes:

```bash
$ rake db:mongoid:create_indexes
```

----

## Installation [2001_2500/000164_JacksonGariety_galileo.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000164_JacksonGariety_galileo.md)

    gem install galileo

----

## Installation [2001_2500/000164_capistrano_rbenv.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000164_capistrano_rbenv.md)

Add this line to your application's Gemfile:

    gem 'capistrano', '~> 3.9'
    gem 'capistrano-rbenv', '~> 2.1'

And then execute:

    $ bundle install

----

## Installation [2001_2500/000164_huobazi_carrierwave-qiniu.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000164_huobazi_carrierwave-qiniu.md)

Add the following to your application's Gemfile:

    gem 'carrierwave-qiniu', '~> 1.1.5'
    # If you need to use locales other than English
    gem 'carrierwave-i18n'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install carrierwave-qiniu -v 1.1.5

----

## Installation [2001_2500/000163_shvets_google-translate.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000163_shvets_google-translate.md)

Add this line to your application's Gemfile:

    gem 'google-translate'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install google-translate

----

## Installation [2001_2500/000163_savonrb_gyoku.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000163_savonrb_gyoku.md)

Gyoku is available through [Rubygems](http://rubygems.org/gems/gyoku) and can be installed via:

``` bash
$ gem install gyoku
```

or add it to your Gemfile like this:

``` ruby
gem 'gyoku', '~> 1.0'
```


----

## Installation [2001_2500/000163_jtescher_carrierwave-imageoptimizer.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000163_jtescher_carrierwave-imageoptimizer.md)

----

## Installation [2001_2500/000162_middleman_middleman-syntax.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000162_middleman_middleman-syntax.md)

If you're just getting started, install the `middleman` gem and generate a new project:

```bash
gem install middleman
middleman init MY_PROJECT
```

If you already have a Middleman project: Add `gem "middleman-syntax"` to your `Gemfile` and run `bundle install`.

**This plugin will not work on Ruby 1.8!** Rouge requires 1.9+, so we do too.

----

## Installation in Rack app (that isn’t a Rails app) [2001_2500/000162_eliotsykes_rack-zippy.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000162_eliotsykes_rack-zippy.md)

Add this line to your application's Gemfile:

    gem 'rack-zippy'

And then execute:

    $ bundle

In `config.ru`:

    require 'rack-zippy'

    # Set asset_root to an absolute or relative path to the directory holding your asset files
    # e.g. '/path/to/my/apps/static-assets' or 'public'
    asset_root = '/path/to/my/apps/public'
    use Rack::Zippy::AssetServer, asset_root


----

## Installation [2001_2500/000162_tsabend_fus.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000162_tsabend_fus.md)
```
$ gem install fus
```

----

## Installation with Bundler [2001_2500/000162_britg_sinatra-cross_origin.markdown](https://github.com/ts-3156/readmes/blob/master/2001_2500/000162_britg_sinatra-cross_origin.markdown)
    gem "sinatra-cross_origin", "~> 0.3.1"

----

## Installation [2001_2500/000162_zweilove_css_splitter.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000162_zweilove_css_splitter.md)

Install by putting `gem 'css_splitter'` into your Gemfile.

----

## Installation [2001_2500/000162_ankane_notable.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000162_ankane_notable.md)

Add this line to your application’s Gemfile:

```ruby
gem 'notable'
```

And run:

```sh
rails generate notable:requests
rails generate notable:jobs
rake db:migrate
```

For a web interface, check out [Notable Web](https://github.com/ankane/notable_web).

----

## Installation [2001_2500/000161_cookpad_expeditor.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000161_cookpad_expeditor.md)

Expeditor currently supports Ruby 2.1 and higher.

Add this line to your application's Gemfile:

```ruby
gem 'expeditor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install expeditor

----

## Installation [2001_2500/000161_mmcclimon_mr_poole.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000161_mmcclimon_mr_poole.md)

Add this line to your application's Gemfile:

    gem 'mr_poole'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mr_poole

----

## Installation [2001_2500/000161_DruRly_gemrat.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000161_DruRly_gemrat.md)

Add this line to your application's Gemfile:

    gem 'gemrat'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gemrat

----

## Installation [2001_2500/000160_beanstalkd_beaneater.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000160_beanstalkd_beaneater.md)

Install beanstalkd:

Mac OS

```
brew install beanstalkd
beanstalkd -p 11300
```

Ubuntu

```
apt-get install beanstalkd
beanstalkd -p 11300
```

Install beaneater as a gem:

```
gem install beaneater
```

or add this to your Gemfile:

```ruby
# Gemfile
gem 'beaneater'
```

and run `bundle install` to install the dependency.

----

## Installation [2001_2500/000160_pzol_deterministic.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000160_pzol_deterministic.md)

Add this line to your application's Gemfile:

    gem 'deterministic'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install deterministic

----

## Installation [2001_2500/000159_carbonfive_raygun.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000159_carbonfive_raygun.md)

    $ gem install raygun

----

## Installation [2001_2500/000159_jimeh_redistat.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000159_jimeh_redistat.md)

    gem install redistat

If you are using Ruby 1.8.x, it's recommended you also install the
`SystemTimer` gem, as the Redis gem will otherwise complain.

----

## Installation [2001_2500/000159_numa08_git-gitlab.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000159_numa08_git-gitlab.md)

----

## Installation [2001_2500/000158_tomykaira_rspec-parameterized.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000158_tomykaira_rspec-parameterized.md)

Add this line to your application's Gemfile:

    gem 'rspec-parameterized'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-parameterized

----

## Installation [2001_2500/000158_aaronrussell_compass-rgbapng.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000158_aaronrussell_compass-rgbapng.md)

Installation is simple via Ruby Gems. [Compass](http://compass-style.org/) and [ChunkyPNG](http://github.com/wvanbergen/chunky_png) are required.

    gem install compass-rgbapng

----

## Installation [2001_2500/000158_bsiggelkow_jsonify.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000158_bsiggelkow_jsonify.md)

`gem install jsonify`

----

## Installation [2001_2500/000158_morshedalam_rename.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000158_morshedalam_rename.md)

Add this line to your application's Gemfile:

```ruby
gem 'rename'
```

----

## Installation [2001_2500/000157_discourse_discourse_api.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000157_discourse_discourse_api.md)

Add this line to your application's Gemfile:

    gem 'discourse_api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install discourse_api

----

## Installation [2001_2500/000157_sportngin_okcomputer.markdown](https://github.com/ts-3156/readmes/blob/master/2001_2500/000157_sportngin_okcomputer.markdown)

Add this line to your application's Gemfile:

    gem 'okcomputer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install okcomputer

----

## Installation [2001_2500/000157_sgruhier_foundation_rails_helper.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000157_sgruhier_foundation_rails_helper.md)

Add this line to your application's Gemfile:

```ruby
gem 'foundation-rails', '~> 6.0' # required
gem 'foundation_rails_helper', '~> 3.0'
```

And then execute:

```bash
$ bundle
```

----

## Installation [2001_2500/000157_myronmarston_mail_safe.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000157_myronmarston_mail_safe.md)

Load the gem in the appropriate environments using Rails' 3.2+ gem support.  For example, I'm loading this in Gemfile as:

  `gem "mail_safe", group: [:development, :staging]`

IMPORTANT: Be sure not to load this in your production environment, otherwise, your emails won't be sent to the proper
recipients. In your test environment, you probably won't want this either. Rails ensures that no emails are ever sent in the
test environment, and tests that check outbound email recipients may fail.

----

## Installation [2001_2500/000157_robertomiranda_has_secure_token.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000157_robertomiranda_has_secure_token.md)

Add this line to your application's Gemfile:

    gem 'has_secure_token'

And then run:

    $ bundle

Or install it yourself as:

    $ gem install has_secure_token

----

## Installation [2001_2500/000157_forgecrafted_finishing_moves.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000157_forgecrafted_finishing_moves.md)

Gemfile
```
gem 'finishing_moves'
```

Command line
```
gem install 'finishing_moves'
```

----

## Installation [2001_2500/000157_ashmckenzie_percheron.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000157_ashmckenzie_percheron.md)

Add this line to your application's Gemfile:

```ruby
gem 'percheron'
```

And then execute:

```shell
$ bundle install
```

Or install it yourself as:

```shell
$ gem install percheron
```

----

## Installation [2001_2500/000156_maxwell_screencap.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000156_maxwell_screencap.md)

Add this line to your application's Gemfile:

    gem 'screencap'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install screencap

----

## Installation [2001_2500/000156_asenchi_scrolls.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000156_asenchi_scrolls.md)

Add this line to your application's Gemfile:

    gem 'scrolls'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install scrolls

----

## Installation [2001_2500/000156_fog_fog-aws.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000156_fog_fog-aws.md)

Add this line to your application's Gemfile:

```ruby
gem 'fog-aws'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fog-aws

----

## Installation [2001_2500/000156_amatsuda_gem-src.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000156_amatsuda_gem-src.md)

----

## Installation [2001_2500/000155_danielwestendorf_get_schwifty.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000155_danielwestendorf_get_schwifty.md)
Add this line to your application's Gemfile:

```ruby
gem "get_schwifty"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install get_schwifty
```

Install the plugin
```bash
$ rails generate get_schwifty:install
```
Follow the instructions printed.


----

## Installation [2001_2500/000155_stereobooster_jekyll-press.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000155_stereobooster_jekyll-press.md)

----

## Installation [2001_2500/000155_tye_rubyception.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000155_tye_rubyception.md)

Add to your gemfile **in the development group**:
```ruby
group :development do
  gem 'rubyception'
end
```
Run:
```
bundle install
```

Add to your `config/routes.rb`:
```ruby
mount Rubyception::Engine => '/rubyception'
```
Run your rails server and go to:<br>
`http://localhost:3000/rubyception`<br>
Your log entries will appear on the rubyception page in realtime. You
must be using a browser that supports Websockets.

----

## Installation [2001_2500/000155_envato_stack_master.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000155_envato_stack_master.md)

System-wide: `gem install stack_master`

With bundler:

- Add `gem 'stack_master'` to your Gemfile.
- Run `bundle install`
- Run `bundle exec stack_master init` to generate a directory structure and stack_master.yml file

----

## Installation [2001_2500/000155_netguru_picguard.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000155_netguru_picguard.md)

Add Picguard to your Gemfile:

```ruby
gem 'picguard'
```

And run `bundle install` within your app's directory.

----

## Installation [2001_2500/000155_amatsuda_motorhead.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000155_amatsuda_motorhead.md)

Bundle into your Rails app.


----

## Installation [2001_2500/000155_rmosolgo_graphiql-rails.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000155_rmosolgo_graphiql-rails.md)

Add to your Gemfile:

```ruby
gem "graphiql-rails"
```

----

## Installation [2001_2500/000155_telcat_vagrant-proxmox.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000155_telcat_vagrant-proxmox.md)

Install using standard Vagrant plugin method:

```
$ vagrant plugin install vagrant-proxmox
```

This will install the plugin from [RubGems.org](http://rubygems.org/).

----

## Installation [2001_2500/000154_kciter_simple-slack-bot.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000154_kciter_simple-slack-bot.md)
Add this line to your application's Gemfile:
```ruby
gem 'simple-slack-bot'
```
And then execute:
```
$ bundle
```
Or install it yourself as:
```
$ gem install simple-slack-bot
```

----

## Installation [2001_2500/000154_averyvery_hieroglyph.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000154_averyvery_hieroglyph.md)

To install the current version from RubyGems:

	gem install hieroglyph

To install the most recent version, from GitHub:

	git clone git@github.com:averyvery/hieroglyph.git && \
	cd hieroglyph && \
	gem build hieroglyph.gemspec && \
	gem install hieroglyph

To do a quick test run, just generate some example glyphs and create a MyFont font like so:

	hieroglyph -e && hieroglyph

----

## Installation [2001_2500/000154_wildlyinaccurate_jekyll-responsive-image.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000154_wildlyinaccurate_jekyll-responsive-image.md)

This plugin can be installed in three steps:

----

## Installation [2001_2500/000154_stevenharman_git_tracker.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000154_stevenharman_git_tracker.md)

----

## Installation [2001_2500/000154_planetargon_flash-message-conductor.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000154_planetargon_flash-message-conductor.md)

***This branch is only used for Rails 3. Still using Rails 2? Use [https://github.com/planetargon/flash-message-conductor/tree/rails2](https://github.com/planetargon/flash-message-conductor/tree/rails2) instead.***

Add this line to your application's Gemfile:

```ruby
gem "flash-message-conductor", "~> 2.0.1"
```

And then execute:

    $ bundle

Or install it yourself as:

    gem install flash-message-conductor

----

## Installation [2001_2500/000154_plasticine_middleman-imageoptim.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000154_plasticine_middleman-imageoptim.md)

Go set up the [image_optim](https://github.com/toy/image_optim) external utilities, then;

----

## Installation [2001_2500/000153_zinenko_vk-ruby.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000153_zinenko_vk-ruby.md)

```.bash
gem install vk-ruby
```

----

## Installation [2001_2500/000153_Codaisseur_terminal-notifier-guard.markdown](https://github.com/ts-3156/readmes/blob/master/2001_2500/000153_Codaisseur_terminal-notifier-guard.markdown)

This version depends on the official [`terminal-notifier`](https://github.com/alloy/terminal-notifier).
Install it with [Homebrew](http://brew.sh/) or see the official
[Installation instructions](https://github.com/alloy/terminal-notifier#download).

```
$ brew install terminal-notifier
```

Then, install the gem

```
$ gem install terminal-notifier-guard
```

Or add it to your Gemfile:

```ruby
gem 'terminal-notifier-guard', '~> 1.6.1'
```

----

## Installation [2001_2500/000152_knife-block_knife-block.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000152_knife-block_knife-block.md)

If you've installed Chef via rubygems, homebrew, etc, then install using

    gem install knife-block

If you've installed Chef via ChefDK, then install using

    chef gem install knife-block

----

## Installation [2001_2500/000152_sandipransing_rails_tiny_mce.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000152_sandipransing_rails_tiny_mce.md)

Add this line to your application's Gemfile:

```ruby
gem 'rails_tinymce'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_tinymce

----

## Installation [2001_2500/000152_jiripospisil_parsley-rails.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000152_jiripospisil_parsley-rails.md)

Add this line to your application's Gemfile:

    gem "parsley-rails"

And then execute:

    $ bundle

----

## Installation [2001_2500/000152_kbaum_browser-timezone-rails.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000152_kbaum_browser-timezone-rails.md)

Add it to your Gemfile.

```ruby
gem 'browser-timezone-rails'
```

Make sure you have each of the following entries in your application.js:
```
//= require js.cookie
//= require jstz
//= require browser_timezone_rails/set_time_zone
```
That's it! No other configuration is needed as it's all done for you with this gem including setting up your application controller to start using your users' zones.

----

## Installation [2001_2500/000152_rspec_rspec-its.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000152_rspec_rspec-its.md)

Add this line to your application's Gemfile:

```ruby
gem 'rspec-its'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-its

And require it as:

```ruby
require 'rspec/its'
```

----

## Installation [2001_2500/000151_Gazler_rapidash.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000151_Gazler_rapidash.md)

Add this line to your application's Gemfile:

    gem 'rapidash'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rapidash

----

## Installation [2001_2500/000151_dnsimple_dnsimple-ruby.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000151_dnsimple_dnsimple-ruby.md)

You can install the gem manually:

```
gem install dnsimple
```

Or use Bundler and define it as a dependency in your Gemfile:

```
gem 'dnsimple', '~> 4.0'
```

----

## Installation [2001_2500/000151_theodi_csvlint.rb.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000151_theodi_csvlint.rb.md)

Add this line to your application's Gemfile:

    gem 'csvlint'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install csvlint

----

## Installation [2001_2500/000151_yhirose_maxminddb.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000151_yhirose_maxminddb.md)

Add this line to your application's Gemfile:

```ruby
gem 'maxminddb'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install maxminddb
```

----

## Installation [2001_2500/000151_rejeep_evm.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000151_rejeep_evm.md)

Default installation directory for EVM Emacs versions is
`/usr/local/evm`. This can be changed with the `config` command:

```sh
$ evm config path /foo/bar
```

No matter what installation approach you choose, create the
installation directory and give your user access rights, for example:

```sh
$ sudo mkdir /usr/local/evm
$ sudo chown $USER: /usr/local/evm
```

----

## Installation [2001_2500/000151_motdotla_digitalocean.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000151_motdotla_digitalocean.md)

Add this line to your application's Gemfile:

```
gem 'digitalocean'
```

And then execute:

```
bundle
```

Or install it yourself as:

```
gem install digitalocean
```

Then in your application initialize the gem:

```ruby
Digitalocean.client_id  = "your_client_id"
Digitalocean.api_key    = "your_api_key"
```

You can find your keys at [https://cloud.digitalocean.com/api_access](https://cloud.digitalocean.com/api_access)

[![](https://raw2.github.com/scottmotte/digitalocean/master/example.png)](https://cloud.digitalocean.com/api_access)

----

## Installation [2001_2500/000151_soffes_quesadilla.markdown](https://github.com/ts-3156/readmes/blob/master/2001_2500/000151_soffes_quesadilla.markdown)

Add this line to your application's Gemfile:

``` ruby
gem 'quesadilla'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install quesadilla


----

## Installation [2001_2500/000151_cxn03651_write_xlsx.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000151_cxn03651_write_xlsx.md)

Add this line to your application's Gemfile:

    gem 'write_xlsx'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install write_xlsx

----

## Installation [2001_2500/000150_kytrinyx_etsy.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000150_kytrinyx_etsy.md)

Installing the latest stable version is simple:

    $ gem install etsy

If you want to be on the bleeding edge, install from GitHub:

    $ git clone git://github.com/kytrinyx/etsy.git
    $ cd etsy
    $ rake install

----

## Installation [2001_2500/000150_yourabi_twitter-typeahead-rails.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000150_yourabi_twitter-typeahead-rails.md)

Add this line to your application's Gemfile:

    gem 'twitter-typeahead-rails'

    or

    gem 'twitter-typeahead-rails', :git => "git://github.com/yourabi/twitter-typeahead-rails.git"


And then execute:

    $ bundle

Or install it yourself as:

    $ gem install twitter-typeahead-rails

----

## Installation [2001_2500/000150_leshill_hogan_assets.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000150_leshill_hogan_assets.md)

----

## Installation [2001_2500/000150_airbnb_stemcell.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000150_airbnb_stemcell.md)

Add this line to your application's Gemfile:

```bash
gem 'stemcell'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install stemcell
```

Or build the gem locally and install it:

```bash
$ gem build stemcell.gemspec
$ gem install ./stemcell-0.4.3.gem
```

----

## Installation [2001_2500/000150_abonas_kubeclient.md](https://github.com/ts-3156/readmes/blob/master/2001_2500/000150_abonas_kubeclient.md)

Add this line to your application's Gemfile:

```ruby
gem 'kubeclient'
```

And then execute:

```Bash
bundle
```

Or install it yourself as:

```Bash
gem install kubeclient
```

----

## Installation [2501_3000/000149_netguru_messenger-ruby.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000149_netguru_messenger-ruby.md)

Add this line to your application's Gemfile:

```ruby
gem 'messenger-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install messenger-ruby

----

## Installation [2501_3000/000149_kyuden_banken.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000149_kyuden_banken.md)

``` ruby
gem "banken"
```

Include Banken in your application controller:

``` ruby
# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  include Banken
  protect_from_forgery
end
```

Optionally, you can run the generator, which will set up an application loyalty
with some useful defaults for you:

``` sh
rails g banken:install
```

After generating your application loyalty, restart the Rails server so that Rails
can pick up any classes in the new `app/loyalties/` directory.

----

## Installation [2501_3000/000149_socketry_lightio.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000149_socketry_lightio.md)

Add this line to your application's Gemfile:

```ruby
gem 'lightio'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lightio

----

## Installation [2501_3000/000149_miyucy_snappy.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000149_miyucy_snappy.md)

Add this line to your application's Gemfile:

    gem 'snappy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install snappy

----

## Installation [2501_3000/000148_saturnflyer_surrounded.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000148_saturnflyer_surrounded.md)

Add this line to your application's Gemfile:

```ruby
gem 'surrounded'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install surrounded

## Installation for Rails [2501_3000/000148_saturnflyer_surrounded.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000148_saturnflyer_surrounded.md)

See [surrounded-rails](https://github.com/saturnflyer/surrounded-rails)

----

## Installation [2501_3000/000148_rkrage_pg_party.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000148_rkrage_pg_party.md)

Add this line to your application's Gemfile:

```ruby
gem 'pg_party'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pg_party

----

## Installation [2501_3000/000148_clayallsopp_Walt.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000148_clayallsopp_Walt.md)

First install the `Walt` gem:

`gem install walt`

Add `Walt` to your `Gemfile` or require it in your `Rakefile`:

```ruby
gem 'walt'
```

```ruby
require 'walt'
```

If you're going to use the image-URL loading component of Walt, add [AFNetworking](https://github.com/AFNetworking/AFNetworking) to your `pods`:

```ruby
app.pods do
  pod "AFNetworking"
end
```

----

## Installation [2501_3000/000148_djreimer_sequenced.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000148_djreimer_sequenced.md)

Add the gem to your Gemfile:

    gem 'sequenced'

Install the gem with bundler:

    bundle install

----

## Installation [2501_3000/000148_jdan_rubycards.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000148_jdan_rubycards.md)

Add this line to your application's Gemfile:

    gem 'rubycards'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubycards

----

## Installation [2501_3000/000148_ejfinneran_ratelimit.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000148_ejfinneran_ratelimit.md)

Add this line to your application's Gemfile:

``` rb
gem 'ratelimit'
```

And then execute:

``` sh
$ bundle
```

Or install it yourself as:

``` sh
$ gem install ratelimit
```

----

## Installation [2501_3000/000147_postwill_postwill.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000147_postwill_postwill.md)

Add this line to your application's Gemfile:

```ruby
gem 'postwill'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install postwill

----

## Installation [2501_3000/000147_banister_funkify.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000147_banister_funkify.md)

Add this line to your application's Gemfile:

    gem 'funkify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install funkify

----

## Installation [2501_3000/000147_jpignata_temping.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000147_jpignata_temping.md)

In your Gemfile:

```ruby
gem "temping"
```

In `test_helper.rb` add the following block to `ActiveSupport::TestCase`:

```ruby
class ActiveSupport::TestCase
  # ...
  teardown do
    Temping.teardown
  end
  # ...
end
```

Or, if you're using `rspec`, in `spec_helper.rb` add the following block to `RSpec.configure`:

```ruby
RSpec.configure do |config|
  # ...
  config.after do
    Temping.teardown
  end
  # ...
end
```

Alternatively you may want to just cleanup tables, but keep defined models:

```ruby
Temping.cleanup
```

----

## Installation [2501_3000/000147_rmoriz_digital_ocean.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000147_rmoriz_digital_ocean.md)

Add this line to your application's Gemfile:

    gem 'digital_ocean'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install digital_ocean

----

## Installation [2501_3000/000147_rdp_specific_install.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000147_rdp_specific_install.md)

Add this line to your application's Gemfile:

    gem 'specific_install'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install specific_install

----

## Installation [2501_3000/000147_gazay_ids_please.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000147_gazay_ids_please.md)

```bash
gem install ids_please
```

Or, put this in your Gemfile:

```ruby
gem 'ids_please'
```

----

## Installation [2501_3000/000147_aron-bordin_neo-hpstr-jekyll-theme.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000147_aron-bordin_neo-hpstr-jekyll-theme.md)

----

## Installation [2501_3000/000147_dabrorius_jobless.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000147_dabrorius_jobless.md)

You can install jobless via RubyGems

```
gem install jobless
```

Then just create a new ruby file, require jobless and start coding. When you
run that file your CV will be generated.

----

## Installation [2501_3000/000147_mariusandra_aristotle.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000147_mariusandra_aristotle.md)

Put this in your Gemfile

    gem 'aristotle'

----

## Installation [2501_3000/000146_recurly_recurly-client-ruby.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000146_recurly_recurly-client-ruby.md)

Recurly is packaged as a Ruby gem. We recommend you install it with
[Bundler](http://gembundler.com/) by adding the following line to your Gemfile:

``` ruby
gem 'recurly', '~> 2.17'
```

Recurly will automatically use [Nokogiri](http://nokogiri.org/) (for a nice
speed boost) if it's available and loaded in your app's environment.

----

## Installation [2501_3000/000146_tyrauber_stock_quote.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000146_tyrauber_stock_quote.md)

To install the 'stock_quote' ruby gem:

`gem install stock_quote`

----

## Installation [2501_3000/000146_threedaymonk_htmlbeautifier.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000146_threedaymonk_htmlbeautifier.md)

This is a Ruby gem.
To install the command-line tool (you may need `sudo`):

```sh
$ gem install htmlbeautifier
```

To use the gem with Bundler, add to your `Gemfile`:

```ruby
gem 'htmlbeautifier'
```

----

## Installation [2501_3000/000146_dwbutler_groupify.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000146_dwbutler_groupify.md)

Add this line to your application's Gemfile:

    gem 'groupify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install groupify

----

## Installation [2501_3000/000146_ryanb_mustard.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000146_ryanb_mustard.md)

Add this line to your application's Gemfile and run the `bundle` command.

```ruby
gem 'mustard', group: :test
```


----

## Installation [2501_3000/000146_mgsnova_feature.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000146_mgsnova_feature.md)

        gem install feature

----

## Installation [2501_3000/000145_bcoles_ssrf_proxy.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000145_bcoles_ssrf_proxy.md)

```
$ gem install ssrf_proxy
```

----

## Installation [2501_3000/000145_rrrene_sparkr.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000145_rrrene_sparkr.md)

Add this line to your application's Gemfile:

    gem 'sparkr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sparkr



----

## Installation [2501_3000/000145_hassox_rails_warden.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000145_hassox_rails_warden.md)

Add this line to your application's Gemfile:

```ruby
gem 'rails_warden'
```

And then execute

```
$ bundle
```

Or install it yourself as:

```
$ gem install rails_warden
```

----

## Installation :floppy_disk: [2501_3000/000145_pachacamac_busker.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000145_pachacamac_busker.md)

Add this line to your application's Gemfile:

    gem 'busker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install busker

Or copy the code into your project ... it's tiny!

----

## Installation [2501_3000/000145_LunarLogic_gauguin.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000145_LunarLogic_gauguin.md)

Add this line to your application's Gemfile:

```ruby
gem 'gauguin'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gauguin

----

## Installation [2501_3000/000145_francesc_rails-translate-routes.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000145_francesc_rails-translate-routes.md)

Add it to your Gemfile:

    gem 'rails-translate-routes'

----

## Installation [2501_3000/000144_Gurpartap_aescrypt.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000144_Gurpartap_aescrypt.md)

Add this line to your application's Gemfile:

    gem 'aescrypt'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aescrypt

----

## Installation [2501_3000/000143_arches_marco-polo.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000143_arches_marco-polo.md)

    In your Gemfile: gem "marco-polo"
    $ bundle install
  
**Note:** if you're using pry, make sure to list marco-polo AFTER pry-rails in your gemfile!
  
----

## Installation [2501_3000/000143_MadRabbit_git-wayback-machine.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000143_MadRabbit_git-wayback-machine.md)

Add this line to your application's Gemfile:

```ruby
gem 'git-wayback-machine'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install git-wayback-machine

----

## Installation [2501_3000/000143_byroot_activerecord-typedstore.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000143_byroot_activerecord-typedstore.md)

Add this line to your application's Gemfile:

    gem 'activerecord-typedstore'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord-typedstore

----

## Installation [2501_3000/000143_sprotheroe_vagrant-disksize.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000143_sprotheroe_vagrant-disksize.md)


```shell
vagrant plugin install vagrant-disksize
```

----

## Installation [2501_3000/000143_jaipandya_wedding.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000143_jaipandya_wedding.md)

Command line install

    $ gem install wedding

Add this line to your application's Gemfile:

    gem 'wedding'

And then execute:

    $ bundle

----

## Installation [2501_3000/000142_le0pard_mongodb_logger.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000142_le0pard_mongodb_logger.md)

1. Add the following to your Gemfile then refresh your dependencies by executing "bundle install" (or just simple "bundle"):

        gem "mongodb_logger"

1. Add adapter in Gemfile. Supported mongo and moped (mongoid). For example:

        gem "mongo"
        gem "bson_ext"

  or

        gem "moped"

1. Add the following line to your ApplicationController:

        include MongodbLogger::Base

1. For use with Heroku you need to prevent the rails\_log\_stdout plugin from being added by Heroku for rails 3:

        mkdir vendor/plugins/rails_log_stdout
        touch vendor/plugins/rails_log_stdout/.gitkeep

   For Rails 4 just remove from Gemfile "rails_12factor" gem.

1. Add MongodbLogger settings to database.yml for each environment in which you want to use the MongodbLogger. The MongodbLogger will also
   look for a separate mongodb\_logger.yml or mongoid.yml (if you are using mongoid) before looking in database.yml.
   In the mongodb\_logger.yml and mongoid.yml case, the settings should be defined without the 'mongodb\_logger' subkey.

   database.yml:

        development:
          adapter: postgresql
          database: my_app_development
          username: postgres
          mongodb_logger:
            database: my_app               # required (the only required setting)
            capped: true                   # default: true  - warning: uncapped collections introduce the vulnerability that the size of the collection grows too high, exceeding all avaialble disk space
            capsize: <%= 10.megabytes %>   # default: 250MB - ignored if capped is set to false
            host: localhost                # default: localhost
            port: 27017                    # default: 27017
            username: null                 # default: null, username for MongoDB Auth
            password: null                 # default: null, password for MongoDB Auth
            replica_set: true              # default: false - Adds retries for ConnectionFailure during voting for replica set master
            write_options:                 # default: {w: 0, wtimeout: 200} - write options for inserts (w - wait for insert to propagate to "w" numbers of nodes)
              w: 0
              wtimeout: 200
            application_name: my_app       # default: Rails.application
            disable_file_logging: false    # default: false - disable logging into filesystem (only in MongoDB)
            collection: some_name          # default: Rails.env + "_log" - name of MongoDB collection

   mongodb\_logger.yml:

        development:
          database: my_app
          capsize: <%= 10.megabytes %>
          host: localhost
          port: 27017
          replica_set: true

   Also you can use "url" parameter for setup connection to mongodb:

        development:
          url: mongodb://username:password@localhost:27017/my_app
          capsize: <%= 10.megabytes %>


1. For using with MongoDB Replica Set (more info you can read by this link [http://www.mongodb.org/display/DOCS/Replica+Sets](http://www.mongodb.org/display/DOCS/Replica+Sets)). In config set list of [host, port] in key "hosts":

        development:
          database: my_app
          capsize: <%= 10.megabytes %>
          host: localhost
          port: 27017
          hosts:
            - - 127.0.0.1
              - 27018
            - - 127.0.0.1
              - 27019

1. For assets pipeline you can generate all js/css file into folder by rake task:

        rake mongodb_logger:assets:compile[public/assets]

----

## Installation [2501_3000/000142_dry-rb_dry-monads.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000142_dry-rb_dry-monads.md)

Add this line to your application's Gemfile:

```ruby
gem 'dry-monads'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install dry-monads
```

----

## Installation [2501_3000/000142_damianFC_alexa-rubykit.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000142_damianFC_alexa-rubykit.md)

----

## Installation [2501_3000/000142_piotrmurach_rack-policy.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000142_piotrmurach_rack-policy.md)

Add this line to your application's Gemfile:

    gem 'rack-policy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-policy

----

## Installation [2501_3000/000142_keolo_mixpanel_client.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000142_keolo_mixpanel_client.md)

    gem install mixpanel_client

or if you use a Gemfile

    gem 'mixpanel_client'

----

## Installation [2501_3000/000141_pat_riddle.markdown](https://github.com/ts-3156/readmes/blob/master/2501_3000/000141_pat_riddle.markdown)

Riddle is available as a gem, so you can install it directly:

    gem install riddle

Or include it in a Gemfile:

    gem 'riddle', '~> 2.3.2'

----

## Installation [2501_3000/000141_ankane_slowpoke.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000141_ankane_slowpoke.md)

Add this line to your application’s Gemfile:

```ruby
gem 'slowpoke'
```

And run:

```sh
rails generate slowpoke:install
```

This creates a `public/503.html` you can customize.

----

## Installation [2501_3000/000140_davydovanton_kan.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000140_davydovanton_kan.md)

Add this line to your application's Gemfile:

```ruby
gem 'kan'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kan

----

## Installation [2501_3000/000140_GCorbel_activeform-rails.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000140_GCorbel_activeform-rails.md)

Add this line to you Gemfile :

```ruby
  gem 'activeform-rails'
```

Please make sure you are running a compatible version of Ruby, see below.

----

## Installation [2501_3000/000139_piotrmurach_loaf.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000139_piotrmurach_loaf.md)

Add this line to your application's Gemfile:

```ruby
gem 'loaf'
```

And then execute:

```ruby
$ bundle
```

Or install it yourself as:

```ruby
gem install loaf
```

Then run the generator:

```ruby
rails generate loaf:install
```

----

## Installation [2501_3000/000139_capistrano_maintenance.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000139_capistrano_maintenance.md)

Add this line to your application's Gemfile:

``` ruby
gem 'capistrano', '~> 3.0'
gem 'capistrano-maintenance', '~> 1.0', require: false
```

And then execute:

``` bash
$ bundle
```

Or install it yourself:

``` bash
$ gem install capistrano-maintenance
```

----

## Installation [2501_3000/000139_jjyr_minidown.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000139_jjyr_minidown.md)

Add this line to your application's Gemfile:

    gem 'minidown'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minidown

----

## Installation [2501_3000/000139_boazsegev_plezi.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000139_boazsegev_plezi.md)

Add this line to your application's Gemfile:

```ruby
gem 'plezi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install plezi

----

## Installation [2501_3000/000139_pythonicrubyist_creek.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000139_pythonicrubyist_creek.md)

Creek can be used from the command line or as part of a Ruby web framework. To install the gem using terminal, run the following command:

```
gem install creek
```

To use it in Rails, add this line to your Gemfile:

```ruby
gem 'creek'
```

----

## Installation [2501_3000/000139_yolk_valvat.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000139_yolk_valvat.md)

Add it to your Gemfile:

    gem 'valvat'

To save most of the used memory and load only the local verification functionality – and not the remote lookup with VIES – add it like this instead:

    gem 'valvat', :require => 'valvat/local'

In any case run:

    $ bundle

Or install it yourself as:

    $ gem install valvat

----

## Installation [2501_3000/000138_ongaeshi_milkode.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000138_ongaeshi_milkode.md)

    $ gem install milkode

When you faild to install Rroonga, Please refer.
* [File: install — rroonga - Ranguba](http://ranguba.org/rroonga/en/file.install.html)

----

## Installation [2501_3000/000138_faye_websocket-driver-ruby.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000138_faye_websocket-driver-ruby.md)

```
$ gem install websocket-driver
```


----

## Installation [2501_3000/000138_Leadformance_hstore_translate.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000138_Leadformance_hstore_translate.md)

gem install hstore_translate

When using bundler, put it in your Gemfile:

```ruby
source 'https://rubygems.org'

gem 'activerecord'
gem 'pg', :platform => :ruby
gem 'activerecord-jdbcpostgresql-adapter', :platform => :jruby
gem 'hstore_translate'
```

For ActiveRecord < 4.0 you'll also want to add:

```ruby
gem 'activerecord-postgres-hstore', '~> 0.7.0'
```

----

## Installation [2501_3000/000138_barsoom_traco.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000138_barsoom_traco.md)

Add this to your `Gemfile`:

```ruby
gem "traco"
```

Then run

    bundle

to install it.


----

## Installation [2501_3000/000138_tiagopog_jsonapi-utils.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000138_tiagopog_jsonapi-utils.md)

Support:

* Ruby 1.9+ with Rails 4
* Ruby 2.3+ with Rails 5

For Rails 4 add this to your application's Gemfile:

```ruby
gem 'jsonapi-utils', '~> 0.4.9'
```

For Rails 5:

```ruby
gem 'jsonapi-utils', '~> 0.7.2'
```

And then execute:

```shell
$ bundle
```

----

## Installation [2501_3000/000138_ndea_notifyor.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000138_ndea_notifyor.md)

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

----

## Installation [2501_3000/000138_ooyala_retries.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000138_ooyala_retries.md)

You can get the gem with `gem install retries` or simply add `gem "retries"` to your Gemfile if you're using
bundler.

----

## Installation [2501_3000/000138_cowbell_active_model-errors_details.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000138_cowbell_active_model-errors_details.md)

```
gem install "active_model-errors_details"
```

----

## Installation [2501_3000/000137_agoragames_activity_feed.markdown](https://github.com/ts-3156/readmes/blob/master/2501_3000/000137_agoragames_activity_feed.markdown)

`gem install activity_feed`

or:

`gem 'activity_feed'`

Make sure your redis server is running! Redis configuration is outside the scope of this README, but
check out the [Redis documentation](http://redis.io/documentation).

----

## Installation [2501_3000/000137_alistairstead_Magentify.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000137_alistairstead_Magentify.md)

    $ gem install magentify

----

## Installation [2501_3000/000137_sferik_multi_xml.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000137_sferik_multi_xml.md)
    gem install multi_xml

----

## Installation [2501_3000/000136_ivantsepp_annotate_gem.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000136_ivantsepp_annotate_gem.md)

```
$ gem install annotate_gem
```

----

## Installation ## [2501_3000/000136_tpitale_mail_room.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000136_tpitale_mail_room.md)

Add this line to your application's Gemfile:

    gem 'mail_room'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mail_room

You will also need to install `faraday` or `letter_opener` if you use the `postback` or `letter_opener` delivery methods, respectively.

----

## Installation [2501_3000/000136_frenesim_schema_to_scaffold.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000136_frenesim_schema_to_scaffold.md)

Assuming that you have rubygems-bundler installed, just type:

    gem install schema_to_scaffold

----

## Installation [2501_3000/000136_adamcooke_authie.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000136_adamcooke_authie.md)

As usual, just pop this in your Gemfile:

```ruby
gem 'authie', '~> 3.1'
```

You will then need add the database tables Authie needs to your database. You
should copy Authie's migrations and then migrate.

```
rake authie:install:migrations
rake db:migrate
```

----

## Installation [2501_3000/000136_soffes_unmarkdown.markdown](https://github.com/ts-3156/readmes/blob/master/2501_3000/000136_soffes_unmarkdown.markdown)

Add this line to your application's Gemfile:

``` ruby
gem 'unmarkdown'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unmarkdown

----

## Installation [2501_3000/000136_guidomb_carthage_cache.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000136_guidomb_carthage_cache.md)

Add this line to your application's Gemfile:

```ruby
gem 'carthage_cache'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install carthage_cache

----

## Installation [2501_3000/000135_street-address-rb_street-address.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000135_street-address-rb_street-address.md)

```shell
    gem install StreetAddress
```

then in your code

```ruby
    require 'street_address'
```

or from Gemfile

```ruby
    gem 'StreetAddress', :require => "street_address"
```

----

## Installation [2501_3000/000135_mezis_fuzzily.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000135_mezis_fuzzily.md)

Add this line to your application's Gemfile:

    gem 'fuzzily'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fuzzily

----

## Installation [2501_3000/000135_tech-angels_vandamme.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000135_tech-angels_vandamme.md)

Add this line to your application's Gemfile:

    gem 'vandamme'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vandamme

----

## Installation [2501_3000/000135_werein_x-editable-rails.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000135_werein_x-editable-rails.md)

Add this line to your application's Gemfile:

    gem 'x-editable-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install x-editable-rails

----

## Installation [2501_3000/000135_bdmac_strong_password.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000135_bdmac_strong_password.md)

NOTE: StrongPassword requires the use of Ruby 2.0.  Upgrade if you haven't already!

Add this line to your application's Gemfile:

    gem 'strong_password', '~> 0.0.6'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install strong_password

----

## Installation [2501_3000/000134_maximeg_email_inquire.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000134_maximeg_email_inquire.md)

Add this line to your application's Gemfile:

```ruby
gem 'email_inquire'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install email_inquire

----

## Installation [2501_3000/000134_k0kubun_rack-user_agent.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000134_k0kubun_rack-user_agent.md)

Add this line to your application's Gemfile:

```ruby
gem 'rack-user_agent'
```

----

## Installation [2501_3000/000134_musaffa_file_validators.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000134_musaffa_file_validators.md)

Add the following to your Gemfile:

```ruby
gem 'file_validators'
```

----

## Installation [2501_3000/000134_solnic_coercible.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000134_solnic_coercible.md)

Add this line to your application's Gemfile:

    gem 'coercible'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install coercible

----

## Installation [2501_3000/000134_wpeterson_heroku-vector.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000134_wpeterson_heroku-vector.md)


----

## Installation [2501_3000/000134_monterail_grape-kaminari.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000134_monterail_grape-kaminari.md)

Add this line to your application's Gemfile:

```ruby
gem 'grape-kaminari'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install grape-kaminari
```

----

## Installation [2501_3000/000134_rails_rails-html-sanitizer.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000134_rails_rails-html-sanitizer.md)

Add this line to your application's Gemfile:

    gem 'rails-html-sanitizer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-html-sanitizer

----

## Installation [2501_3000/000134_joonty_pessimize.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000134_joonty_pessimize.md)

You don't need to add it to your Gemfile - it's best kept as a system-wide gem. All you need to do is install it from the command line:

    $ gem install pessimize

This installs the command line tool `pessimize`.

----

## Installation [2501_3000/000134_babel_ruby-babel-transpiler.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000134_babel_ruby-babel-transpiler.md)

``` sh
$ gem install babel-transpiler
```

----

## Installation [2501_3000/000133_ndea_rimportor.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000133_ndea_rimportor.md)

Add this line to your application's Gemfile:

```ruby
gem 'rimportor', '~> 0.3'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rimportor

----

## Installation [2501_3000/000133_zmoazeni_harvested.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000133_zmoazeni_harvested.md)

    gem install harvested

----

## Installation [2501_3000/000133_joshuajansen_bulma-rails.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000133_joshuajansen_bulma-rails.md)

Add this line to your application's Gemfile:

    gem "bulma-rails", "~> 0.7.2"

And then execute:

    $ bundle

----

## Installation [2501_3000/000132_bankscrap_bankscrap.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000132_bankscrap_bankscrap.md)

Installation from RubyGems:

    # BBVA
    gem install bankscrap-bbva

    # ING
    gem install bankscrap-ing

Or, if you're using Bundler, just add the following to your Gemfile:

    # BBVA
    gem 'bankscrap-bbva'

    # ING
    gem 'bankscrap-ing'

Note that you only need to install the gem for your selected bank – the main gem (`bankscrap`) will be installed as a dependency.

----

## Installation [2501_3000/000132_infosimples_deathbycaptcha.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000132_infosimples_deathbycaptcha.md)

Add this line to your application's Gemfile:

```ruby
gem 'deathbycaptcha', '~> 5.0.0'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install deathbycaptcha

----

## Installation [2501_3000/000132_jfairbank_chroma.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000132_jfairbank_chroma.md)

Add this line to your application's Gemfile:

```ruby
gem 'chroma'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chroma

----

## Installation [2501_3000/000132_metaskills_store_configurable.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000132_metaskills_store_configurable.md)

Install the gem with bundler. We follow a semantic versioning format that tracks ActiveRecord's minor version. So this means to use the latest 3.2.x version of StoreConfigurable with any ActiveRecord 3.2 version.

```ruby
gem 'store_configurable', '~> 4.0.0'
```

Our `4.0.x` versions target both Rails 4.0 and 4.1 only.


----

## Installation [2501_3000/000131_splattael_libnotify.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000131_splattael_libnotify.md)

```bash
gem install libnotify
```

You'll need libnotify. On Debian just type:

```bash
apt-get install libnotify1
```

----

## Installation [2501_3000/000131_baschtl_devise-token_authenticatable.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000131_baschtl_devise-token_authenticatable.md)

Add this line to your application's Gemfile:

    gem 'devise-token_authenticatable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install devise-token_authenticatable

----

## Installation [2501_3000/000131_ID25_rails_emoji_picker.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000131_ID25_rails_emoji_picker.md)

Add this line to your application's Gemfile:

```ruby
gem 'rails_emoji_picker'
```

----

## Installation [2501_3000/000131_teohm_require_reloader.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000131_teohm_require_reloader.md)

Add this line to your application's Gemfile:

    gem 'require_reloader'

And then execute:

    $ bundle


----

## Installation [2501_3000/000131_ruby-grape_grape-rabl.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000131_ruby-grape_grape-rabl.md)

Add the `grape` and `grape-rabl` gems to Gemfile.

```ruby
gem 'grape'
gem 'grape-rabl'
```

And then execute:

    $ bundle

----

## Installation [2501_3000/000131_kvokka_pp_sql.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000131_kvokka_pp_sql.md)

add in Gemfile
```
gem 'pp_sql', group: :development
```

And then execute:
```bash
$ bundle
```

----

## Installation [2501_3000/000131_cllns_material_design_lite-rails.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000131_cllns_material_design_lite-rails.md)

To your Rails application's Gemfile, add

```ruby
gem 'material_design_lite-rails', '~> 1.3'
```

And then run

    $ bundle

----

## Installation [2501_3000/000131_cryo28_sidekiq_status.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000131_cryo28_sidekiq_status.md)

Add this line to your application's Gemfile:

```ruby
gem 'sidekiq_status'
```

And then execute:

    $ bundle

----

## Installation [2501_3000/000131_wildbit_postmark-gem.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000131_wildbit_postmark-gem.md)

You can use the library with or without a Bundler.

With Bundler:

``` ruby
gem 'postmark'
```

Without Bundler:

``` bash
gem install postmark
```

----

## Installation [2501_3000/000131_joshsusser_informal.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000131_joshsusser_informal.md)

It's a Ruby gem, so just install it with `gem install informal`, add it to your
bundler Gemfile, or do whatever you like to do with gems. There is nothing to
configure.

----

## Installation [2501_3000/000130_alexgenco_neovim-ruby.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000130_alexgenco_neovim-ruby.md)

Add this line to your application's Gemfile:

    gem "neovim"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install neovim

----

## Installation and Setup  [2501_3000/000130_drewblessing_gitlab-cli.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000130_drewblessing_gitlab-cli.md)

_How do I get started?_ 

Install from rubygems (Recommended)

1. _`gem install gitlab_cli`_

Install from the repo (requires rake and bundler).

1. _Clone the repo._
2. _`rake build`_
3. _`rake install` (Requires root privileges)._

You now have access to the `gitlab` command.

_Required Gems_

If you install from rubygems then you will not need to install these required gems yourself. The gem package manager will attempt to install the proper versions for you.

1. thor >= 0.17.0 and < 0.19
2. json >= 1.7.7 and < 1.8
3. rest-client >= 1.6.7 and < 1.7

_Required system packages_

1. ruby-devel
2. make
3. gcc

_How can I find the private token for my user?_

Login to your GitLab web UI, go to 'My Profile', and select the 'Account' tab.  Copy the private token from the box and paste into your config, which should be located at `~/.gitlab.yml`.  

_How can I add the repo bin path to my environment PATH variable?_

Place it in your ~/.bash_profile file.  You should end up with something like this:
`export PATH=$PATH:/path/to/gitlab-cli/repo/bin/`

----

## Installation and usage [2501_3000/000130_MaximeD_gem_updater.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000130_MaximeD_gem_updater.md)

```
gem install gem_updater
gem_update
<copy paste of output to commit message>
```

If you prefer to, you can ask gem_update to commit straight away:

```
gem_update --commit
```

This will use the generated message as a commit message template, allowing you
to edit before commit.


----

## Installation [2501_3000/000130_jpatokal_mediawiki-gateway.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000130_jpatokal_mediawiki-gateway.md)

To install MediaWiki::Gateway, execute the command:

```shell
$ gem install mediawiki-gateway
```

Or add it to your application's `Gemfile`:

```ruby
gem 'mediawiki-gateway'
```

and then execute the command:

```shell
$ bundle
```

----

## Installation [2501_3000/000130_github_github-ldap.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000130_github_github-ldap.md)

Add this line to your application's Gemfile:

    gem 'github-ldap'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install github-ldap

----

## Installation [2501_3000/000130_gzigzigzeo_sidekiq-grouping.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000130_gzigzigzeo_sidekiq-grouping.md)

Add this line to your application's Gemfile:

    gem 'sidekiq-grouping'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sidekiq-grouping

----

## Installation [2501_3000/000129_dtaniwaki_mandriller.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000129_dtaniwaki_mandriller.md)

Add the mandriller gem to your Gemfile.

```ruby
gem "mandriller"
```

And run `bundle install`.

Add the following into any environment's settings in `config/environments/`.

```ruby
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :user_name => 'UserName',
  :password => 'Password',
  :address => "smtp.mandrillapp.com",
  :domain => "your-domain.com",
  :enable_starttls_auto => true,
  :authentication => 'login',
  :port => 587,
}
```

----

## Installation [2501_3000/000129_BPScott_breakup.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000129_BPScott_breakup.md)

Breakup is compatible with both the origial ruby version of Sass and libsass.
It is available as a rubygem and an npm package. If you don't wish to use either
of these package managers you can also copy
[stylesheets/_breakup.scss](stylesheets/_breakup.scss) into your project and
`@import` it from there, as Breakup is written in pure SCSS and has no external
dependencies.

----

## Installation [2501_3000/000129_capistrano_npm.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000129_capistrano_npm.md)

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.1.0'
gem 'capistrano-npm'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-npm

----

## Installation [2501_3000/000128_instructure_ims-lti.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000128_instructure_ims-lti.md)

Add this line to your application's Gemfile:

    gem 'ims-lti'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lti

----

## Installation [2501_3000/000128_ko1_yomikomu.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000128_ko1_yomikomu.md)

Add this line to your application's Gemfile:

```ruby
gem 'yomikomu'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yomikomu

----

## Installation [2501_3000/000128_kaize_validates.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000128_kaize_validates.md)

Add this line to your application's Gemfile:

``` ruby
gem 'validates'
```

Or install it yourself as:

``` bash
$ gem install 'validates'
```

----

## Installation [2501_3000/000128_jekyll_jekyll-gist.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000128_jekyll_jekyll-gist.md)

Add this line to your application's Gemfile:

    $ gem 'jekyll-gist'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-gist

Then add the following to your site's `_config.yml`:

```
plugins:
  - jekyll-gist
```

💡 If you are using a Jekyll version less than 3.5.0, use the `gems` key instead of `plugins`.

----

## Installation [2501_3000/000128_nickryand_vagrant-multi-putty.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000128_nickryand_vagrant-multi-putty.md)
----

## Installation [2501_3000/000128_lisinge_valid_email2.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000128_lisinge_valid_email2.md)

Add this line to your application's Gemfile:

```ruby
gem "valid_email2"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install valid_email2

----

## Installation [2501_3000/000128_kvokka_onotole.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000128_kvokka_onotole.md)

First install the onotole gem add this in `Gemfile` and `bundle`

```
    group :development do
      gem 'onotole', require: false
    end
```

or

    gem install onotole

Then run:

    onotole projectname [ -c ] [ * rails_genetator_flags ]

There are 2 main ways of using:
1. `onotole projectname` will generate project with default mandatory gems and 
default flexible gems
2. `onotole projectname -c` will generate project with mandatory gems and will 
provide a menu for gem selection, where you will need to choose all options.

Of course you are free to add standard `rails new` flags, inasmuch as Onotole
based on standard rails generator

And command like this will add some magic

    onotole app  * github organization/project * heroku true

This will provide a dialog, where you can select needed gems, also you can add
it with gemname flag, after app_name, like `onotole projectname --slim`.
List of gems you always can get with `onotole --gems` command. Also, 
`onotole --help` can be useful.

*NB: if you install custom gems, default user gem pack will not be installed.

----

## Installation [2501_3000/000127_peczenyj_MooseX.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000127_peczenyj_MooseX.md)

Add this line to your application's Gemfile:

    gem 'moosex'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install moosex

You need ruby 2.0.x or superior.

----

## Installation [2501_3000/000127_digitalocean_kartograph.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000127_digitalocean_kartograph.md)

Add this line to your application's Gemfile:

    gem 'kartograph'

And then execute:

    $ bundle

----

## Installation [2501_3000/000127_henrylawson_photish.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000127_henrylawson_photish.md)

Photish is available across all platforms as a [Ruby Gem](#ruby-gem). The
recommended installation is the [Ruby Gem](#ruby-gem) as not all features are
currently available on the platform native packages.

For convenience Photish is also packaged in platform native installers. The
platform native installers come with all the Ruby Gems and Ruby runtime bundled
inside the package. This means you simply need to install the package and you
can immediately use Photish without having to configure Ruby or any Gems, this
is done using [Travelling Ruby](phusion.github.io/traveling-ruby/).

Instructions are provided for each platform native installation:

- [Debian Package](#debian-package)
- [RPM Package](#rpm-package)
- [Linux Binaries](#linux-binaries)
- [Windows Binaries](#windows-binaries)

----

## Installation [2501_3000/000127_kickstarter_cfn-flow.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000127_kickstarter_cfn-flow.md)

Via [rubygems](https://rubygems.org/gems/cfn-flow):
```
gem install cfn-flow
```

The `git` command is also needed.

----

## Installation [2501_3000/000127_sosedoff_grooveshark.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000127_sosedoff_grooveshark.md)

Install gem from rubygems:

```
gem install grooveshark
```

Or add this line to your `Gemfile`:

```
gem "grooveshark"
```

And install bundle:

```
bundle install
```

----

## Installation [2501_3000/000126_ybur-yug_gkv.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000126_ybur-yug_gkv.md)

Add this line to your application's Gemfile:

```ruby
gem 'gkv'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gkv

----

## Installation [2501_3000/000126_kenn_memstat.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000126_kenn_memstat.md)

Add this line to your application's Gemfile:

```ruby
gem 'memstat'
```

Or install it yourself as:

```sh
$ gem install memstat
```

----

## Installation [2501_3000/000126_jasonfb_nondestructive_migrations.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000126_jasonfb_nondestructive_migrations.md)
To add to your Rails project, follow these steps.

1) Add this to your gemfile.
```ruby
gem 'nondestructive_migrations'
```

2) Run `bundle install`

3) Run the setup script:
```
rails generate data_migrations:install
```
This will create a *schema* migration that will create the data_migrations table itself. (There will be a table in your database called data_migrations which will have two columns: id, version. It works exactly like the schema_migrations table.) Now execute that schema migration (and, in turn, be sure to run this on Production):

```
rake db:migrate
```

You are now set up and ready to start making data migrations. To create your first migration, create it with a generating using a camal-case description of what your data migration does. 

```
rails generate data_migration UpdatePhoneNumbers
```

Look for a file called (something like) `db/data_migrate/20140831020834_update_phone_numbers.rb`. It will have been automatically written with an empty up and down method. Add whatever operations you want to do in your **up** method, like large data manipulation jobs, running rake tasks, or enqueuing batch process jobs. 

You probably want to put `ActiveRecord::IrreversibleMigration` into the **down** method your data migration:

```
class UpdatePhoneNumbers < ActiveRecord::Migration
  def up
    # do stuff here
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
```

To actually tell your app to run the data migration, use:

```
rake data:migrate
```


You get three additional rake tasks that operate and have the same syntax as the schema migrations, but operate only on the data migrations. 

----

## Installation [2501_3000/000126_ucnv_aviglitch.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000126_ucnv_aviglitch.md)

```sh
  gem install aviglitch
```

----

## Installation [2501_3000/000126_trade-informatics_caracal.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000126_trade-informatics_caracal.md)

Add this line to your application's Gemfile:

```ruby
gem 'caracal'
```

Then execute:

```bash
bundle install
```


----

## Installation [2501_3000/000126_waterlink_rack-reverse-proxy.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000126_waterlink_rack-reverse-proxy.md)
The gem is available on rubygems.  Assuming you have a recent version of Rubygems you should just be able to install it via:

```
gem install rack-reverse-proxy
```

For your Gemfile use:

```ruby
gem "rack-reverse-proxy", require: "rack/reverse_proxy"
```

----

## Installation [2501_3000/000126_nathanvda_on_the_spot.markdown](https://github.com/ts-3156/readmes/blob/master/2501_3000/000126_nathanvda_on_the_spot.markdown)

Inside your `Gemfile` add the following:

    gem "on_the_spot"

Run the installation task:

    rails g on_the_spot:install

This will copy the default translation files, and for rails 3.0 it will also copy the needed assets (javascript files).

----

## Installation [2501_3000/000126_hyperoslo_capistrano-foreman.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000126_hyperoslo_capistrano-foreman.md)

    $ gem install capistrano-foreman

Add this to your `Capfile`:

```ruby
require 'capistrano/foreman'

# Default settings
set :foreman_use_sudo, false # Set to :rbenv for rbenv sudo, :rvm for rvmsudo or true for normal sudo
set :foreman_roles, :all
set :foreman_init_system, 'upstart'
set :foreman_export_path, ->{ File.join(Dir.home, '.init') }
set :foreman_app, -> { fetch(:application) }
set :foreman_app_name_systemd, -> { "#{ fetch(:foreman_app) }.target" }
set :foreman_options, ->{ {
  app: application,
  log: File.join(shared_path, 'log')
} }
```

See [exporting options](http://ddollar.github.io/foreman/#EXPORTING) for an exhaustive list of foreman options.

----

## Installation [2501_3000/000125_airblade_chartjs-ror.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000125_airblade_chartjs-ror.md)

Add this line to your application's Gemfile:

    gem 'chartjs-ror'

And then execute:

    $ bundle

There are two builds of Chart.js: with or without Moment.js.

Choose the appropriate one in your javascript manifest:

- Without Moment.js:
  ```javascript
  //= require Chart.min
  ```

- With Moment.js:
  ```javascript
  //= require Chart.bundle.min
  ```

Please note Chart.js [no longer supports IE8 and below](https://github.com/chartjs/Chart.js/issues/2396#issuecomment-215233106).


----

## Installation [2501_3000/000125_simplabs_rails_api_auth.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000125_simplabs_rails_api_auth.md)

To install the engine simply add to the application's `Gemfile`

```ruby
gem 'rails_api_auth'
```

 and run:
```bash
bundle install
```

__Rails API Auth also adds a migration__ to the application so run

```bash
rake db:migrate
```

as well to migrate the database.

----

## Installation [2501_3000/000125_gowalla_boxer.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000125_gowalla_boxer.md)

Install the [boxer gem](http://rubygems.org/gems/boxer).

----

## Installation [2501_3000/000125_leejarvis_hound.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000125_leejarvis_hound.md)

Add Hound to your `Gemfile` and run `bundle install`:

```ruby
gem 'hound'
```

Hound expects a `hound_actions` table to exist in your schema, go ahead
and run the generator provided:

```
rails generate hound:install
```

This will create a new migration file. Run `rake db:migrate` to add
this table.

----

## Installation [2501_3000/000125_fnando_coupons.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000125_fnando_coupons.md)

Add this line to your application's Gemfile:

```ruby
gem 'coupons'
```

You also need one pagination library. You can choose between [paginate](https://github.com/fnando/paginate) or [kaminari](https://github.com/amatsuda/kaminari), so make sure one of these libs is added to your Gemfile as well.

```ruby
gem 'paginate'
# or
gem 'kaminari'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install coupons

----

## Installation [2501_3000/000124_rob-murray_five-star.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000124_rob-murray_five-star.md)

Add this line to your application's Gemfile:

```ruby
gem 'five-star'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install five-star


----

## Installation inside a Rails app [2501_3000/000124_BaseSecrete_redis_dashboard.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000124_BaseSecrete_redis_dashboard.md)

Add this line in your Gemfile:
```ruby
gem "redis_dashboard"
```

In your terminal run the following command:
```shell
bundle install
```

Then mount the app from `config/routes.rb`:
```ruby
mount RedisDashboard::Application, at: "redis_dashboard"
```

Specify the Redis URLs in `config/redis_dashboard.rb`:
```ruby
RedisDashboard.urls = ["redis://localhost"]
```

Finally visit http://localhost/redis_dashboard/.

----

## Installation [2501_3000/000124_coderbydesign_chart-js-rails.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000124_coderbydesign_chart-js-rails.md)

Add this line to your application's Gemfile:

```ruby
gem 'chart-js-rails'
```

And then execute:
```console
$ bundle
```

Or install it yourself as:

```console
$ gem install chart-js-rails
```

Add this to your application.js file:

```javascript
//= require Chart.min
```

----

## Installation [2501_3000/000124_stefankroes_scribble.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000124_stefankroes_scribble.md)

Add this line to your application's Gemfile:

    gem 'scribble'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install scribble

----

## Installation [2501_3000/000124_infinum_cookies_eu.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000124_infinum_cookies_eu.md)

Add this line to your application's Gemfile:

```ruby
gem 'cookies_eu'
```

And then execute:

    $ bundle

Run the installation generator:

    $ bundle exec rails g cookies_eu:install

Or manually add in application.js:

    //= require cookies_eu

And in application.css:

    *= require cookies_eu

Or, if you have application.scss:

    @import "cookies_eu";

Remember to restart your server!

----

## Installation [2501_3000/000124_ncri_ajaxify_rails.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000124_ncri_ajaxify_rails.md)

Add this line to your application's Gemfile:

    gem 'ajaxify_rails'

And then execute:

    $ bundle

In your application.js file add:

    //= require ajaxify_rails

----

## Installation [2501_3000/000124_activemerchant_offsite_payments.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000124_activemerchant_offsite_payments.md)

----

## Installation [2501_3000/000124_nesquena_sheet_mapper.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000124_nesquena_sheet_mapper.md)

Setup in Gemfile:

```ruby
# Gemfile

gem 'sheet_mapper'
```

and then `require 'sheet_mapper'` and you are done!

----

## Installation [2501_3000/000124_nruth_show_me_the_cookies.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000124_nruth_show_me_the_cookies.md)

Add to your gemfile's test group:

    gem "show_me_the_cookies"


----

## Installation [2501_3000/000124_ranjib_etcd-ruby.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000124_ranjib_etcd-ruby.md)

Add this line to your application's Gemfile:

    gem 'etcd'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install etcd

----

## Installation [2501_3000/000123_hanami_validations.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000123_hanami_validations.md)

Add this line to your application's Gemfile:

```ruby
gem 'hanami-validations'
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install hanami-validations
```

----

## Installation [2501_3000/000123_Shopify_active_fulfillment.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000123_Shopify_active_fulfillment.md)

Add to your gem file, and run `bundle install`.

```
gem 'active_fulfillment'
```

----

## Installation [2501_3000/000123_yukas_traver.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000123_yukas_traver.md)

```shell
gem install traver
```

or add the following line to Gemfile:

```ruby
gem 'traver'
```

and run `bundle install` from your shell.

----

## Installation [2501_3000/000122_rap1ds_ruby-possibly.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000122_rap1ds_ruby-possibly.md)

```ruby
gem install possibly
```

----

## Installation [2501_3000/000122_open-uri-redirections_open_uri_redirections.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000122_open-uri-redirections_open_uri_redirections.md)

Add this line to your application's Gemfile:

    gem 'open_uri_redirections'

And then execute:

```sh
$ bundle install
```

Or install it yourself as:

```sh
$ gem install open_uri_redirections
```

----

## Installation [2501_3000/000122_jekyll_mercenary.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000122_jekyll_mercenary.md)

Add this line to your application's Gemfile:

    gem 'mercenary'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mercenary

**Note: Mercenary may not work with Ruby < 1.9.3.**

----

## Installation [2501_3000/000122_jcasimir_locale_setter.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000122_jcasimir_locale_setter.md)

Currently, LocaleSetter only supports Rails 3.2 and up. If you want 3.0 or
3\.1 support, please file an Issue and we can work it out.

----

## Installation [2501_3000/000122_nielsenramon_kickster.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000122_nielsenramon_kickster.md)

If you haven't installed the following tools then go ahead and do so (make sure you have [Homebrew](https://brew.sh/) installed):

    brew install ruby
    brew install npm

On windows, install Ruby and Node with the installers found here:

  - [Ruby](https://rubyinstaller.org/)
  - [Node.js](https://nodejs.org/en/download/)

Install the gem:

    gem install kickster

Execute gem and scaffold Kickster files:

    kickster new site_name

Setup your environment:

    cd site_name
    bin/setup

You can push your project to any branch except `gh-pages`. For `sitename.github.io` repo users make sure to use another branch than `master`.

----

## Installation [2501_3000/000122_buttercloud_stripe_tester.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000122_buttercloud_stripe_tester.md)

Add this line to your application's Gemfile:
```ruby
gem 'stripe_tester', "~> 0.5.0"
```
And then execute:
```bash
$ bundle
```
Or install it yourself as:
```bash
$ gem install stripe_tester
```

----

## Installation [2501_3000/000122_amatsuda_rfd.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000122_amatsuda_rfd.md)

    % gem install rfd

----

## Installation [2501_3000/000122_xinminlabs_newrelic-grape.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000122_xinminlabs_newrelic-grape.md)

Add this line to your application's Gemfile:

    gem 'newrelic-grape'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install newrelic-grape

If you're using Rails, make sure that you've told rack to start the agent for Grape:

    # config.ru
    require ::File.expand_path('../config/environment',  __FILE__)

    # You need to manually start the agent
    NewRelic::Agent.manual_start

    run YourApplication::Application


----

## Installation [2501_3000/000122_donmelton_magneto.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000122_donmelton_magneto.md)

Magneto is [available as a gem](https://rubygems.org/gems/magneto) which you can install like this:

    sudo gem install magneto

----

## Installation [2501_3000/000121_vinhnglx_active_bootstrap_skin.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000121_vinhnglx_active_bootstrap_skin.md)

- Add the gem to your Gemfile:

```
# Note: The gem require the bootstrap-sass gem. So we need to add bootstrap-sass to Gemfile

gem 'bootstrap-sass'
gem 'active_bootstrap_skin'
```

----

## Installation [2501_3000/000121_DAddYE_leveldb.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000121_DAddYE_leveldb.md)

----

## Installation [2501_3000/000121_k0kubun_activerecord-precount.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000121_k0kubun_activerecord-precount.md)

Add this line to your application's Gemfile:

```ruby
gem 'activerecord-precount'
```

----

## Installation [2501_3000/000121_wjessop_Scamp.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000121_wjessop_Scamp.md)

`gem install scamp` or put `gem 'scamp'` in your Gemfile.

----

## Installation [2501_3000/000121_gjtorikian_commonmarker.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000121_gjtorikian_commonmarker.md)

Add this line to your application's Gemfile:

    gem 'commonmarker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install commonmarker

----

## Installation [2501_3000/000121_RubyMoney_eu_central_bank.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000121_RubyMoney_eu_central_bank.md)

```
gem install eu_central_bank
```

In case you're using older ruby (< 2.1) you need nokogiri < 1.6.8, so add this to your `Gemfile`:

```
gem 'nokogiri', '1.6.8'
```

----

## Installation [2501_3000/000121_shine60vn_adminlte-rails.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000121_shine60vn_adminlte-rails.md)

Add this line to your application's Gemfile:

    gem 'adminlte-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install adminlte-rails

----

## Installation [2501_3000/000120_cyx_shield.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000120_cyx_shield.md)

You can install it using rubygems:

```
gem install shield
```
----

## Installation [2501_3000/000120_domgetter_dare.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000120_domgetter_dare.md)

```bash
$ gem install dare
```

and then

```bash
$ dare new gamename
    create  gamename/Gemfile
    create  gamename/Rakefile
    create  gamename/gamename.rb
    create  gamename/gamename.html
$ cd gamename
gamename$ rake build
gamename$
```

Which will create a game.js file and an game.html file.  Open game.html in your favorite browser, and play your game!

----

## Installation [2501_3000/000120_fd_json_select.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000120_fd_json_select.md)

From your terminal:

```bash
gem install json_select
```

In your `Gemfile`:

```ruby
gem 'json_select'
```

----

## Installation: [2501_3000/000120_cpjolicoeur_bb-ruby.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000120_cpjolicoeur_bb-ruby.md)

    gem install bb-ruby


----

## Installation [2501_3000/000120_codykrieger_ace-rails-ap.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000120_codykrieger_ace-rails-ap.md)

In your Gemfile, add:

```ruby
gem 'ace-rails-ap'
```

Then execute `bundle` and restart your server.

Add in your application.js file:

```javascript
//= require ace-rails-ap
```

To include a theme or mode, add them in your application.js file:

```javascript
//= require ace/theme-sometheme
//= require ace/mode-somemode
```

Workers and modes don't need to be included in your application.js file, as they can also be loaded dynamically (see below).

----

## Installation [2501_3000/000120_baweaver_izzy.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000120_baweaver_izzy.md)

Add this line to your application's Gemfile:

    gem 'izzy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install izzy

----

## Installation [2501_3000/000120_zorab47_active_admin-sortable_tree.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000120_zorab47_active_admin-sortable_tree.md)

1. Add SortableTree to your Gemfile; then `bundle install`
    ```ruby
    gem "active_admin-sortable_tree", "~> 2.0.0"
    ```

2. Add a require to your JavaScript manifest `app/assets/javascripts/active_admin.js`

    ```javascript
    //= require active_admin/sortable
    ```

3. Add an import in your stylesheet manifest `app/assets/stylesheets/active_admin.scss`

    ```sass
    @import "active_admin/sortable";
    ```

----

## Installation [2501_3000/000120_mojolingo_sippy_cup.markdown](https://github.com/ts-3156/readmes/blob/master/2501_3000/000120_mojolingo_sippy_cup.markdown)

If you do not have Ruby 2.3.3 available (check using `ruby --version`), we recommend installing Ruby with [RVM](http://rvm.io)

----

## Installation [2501_3000/000119_akshayrawat_dj_mon.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000119_akshayrawat_dj_mon.md)

Add this line to your application's Gemfile:

    gem 'dj_mon'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dj_mon

----

## Installation [2501_3000/000119_gcao_aspector.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000119_gcao_aspector.md)

```bash
gem install aspector
```

or put it inside of your Gemfile:

```bash
gem 'aspector'
```

----

## Installation [2501_3000/000119_erniebrodeur_ruby-beautify.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000119_erniebrodeur_ruby-beautify.md)

  `gem install ruby-beautify`

----

## Installation [2501_3000/000119_Semantic-Org_Semantic-UI-Rails-LESS.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000119_Semantic-Org_Semantic-UI-Rails-LESS.md)

Add this block to your application's Gemfile:

```ruby
# Semantic UI assets

gem 'less-rails-semantic_ui'
gem 'autoprefixer-rails'
gem 'therubyracer'
```

> Semantic UI is using [autoprefixer](https://github.com/postcss/autoprefixer) (in our case [autoprefixer-rails](https://github.com/ai/autoprefixer-rails))
> to appending additional CSS vendor-prefixes for improve compatibility with different browsers.
> Without it some parts of Semantic UI (i.e. transitions or modal dialogs because they depends to transitions) won't works in some browsers.
> You can remove this gem if you don't use such functionality of Semantic UI.
>
> P.S. I hope in the future this hack will be unnecessary.

And then execute:

    $ bundle install

After that, install configuration files inside your application in the `vendor/assets` directory with:

    $ rails generate semantic_ui:install

Require `semantic_ui/semantic_ui.js` in `app/assets/application.js`:

    ...
    //= require semantic_ui/semantic_ui
    ...

Require `semantic_ui/semantic_ui.css` in `app/assets/application.css`:

    ...
    *= require semantic_ui/semantic_ui
    ...

----

## Installation [2501_3000/000119_activeadmin-plugins_active_admin_theme.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000119_activeadmin-plugins_active_admin_theme.md)
As active_skin is the css theme for the [activeadmin](https://github.com/activeadmin/activeadmin) administration framework - you have to install if first.

Having active admin installed add the following line to your application's Gemfile:


```ruby
gem 'active_admin_theme'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_admin_theme

----

## Installation [2501_3000/000119_SchemaPlus_schema_validations.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000119_SchemaPlus_schema_validations.md)

Simply add schema_validations to your Gemfile.

```ruby
gem "schema_validations"
```
    
----

## Installation [2501_3000/000119_envato_double_entry.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000119_envato_double_entry.md)

In your application's `Gemfile`, add:

```ruby
gem 'double_entry'
```

Download and install the gem with Bundler:

```sh
bundle
```

Generate Rails schema migrations for the required tables:

```sh
rails generate double_entry:install
```

Update the local database:

```sh
rake db:migrate
```


----

## Installation [2501_3000/000119_CocoaPods_cocoapods-try.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000119_CocoaPods_cocoapods-try.md)

    $ gem install cocoapods-try


----

## Installation [2501_3000/000119_qcam_worque.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000119_qcam_worque.md)

**DO NOT add this to your Gemfile**

Install it by

    $ gem install worque

----

## Installation [2501_3000/000119_ruby-av_paperclip-av-transcoder.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000119_ruby-av_paperclip-av-transcoder.md)

Add this line to your application's Gemfile:

    gem 'paperclip-av-transcoder'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paperclip-av-transcoder

----

## Installation [2501_3000/000118_calonso_rails-push-notifications.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000118_calonso_rails-push-notifications.md)
To install the gem simply add this line to your Gemfile

    gem 'rails-push-notifications', '~> 0.2.0'

and then install it by running

    $ bundle install

Once you have it installed, you need to generate the database migrations in order to build the required database structure and then run the newly generated migrations. So do it by executing:

    $ rails generate rails_push_notifications:migrations
    $ rake db:migrate

----

## Installation [2501_3000/000118_janko-m_as-duration.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000118_janko-m_as-duration.md)

```ruby
gem 'as-duration'
```

----

## Installation [2501_3000/000118_qrush_motion-settings-bundle.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000118_qrush_motion-settings-bundle.md)

Add this line to your application's Gemfile:

    gem 'motion-settings-bundle'

And then execute:

    bundle

Or install it yourself as:

    gem install motion-settings-bundle

----

## Installation [2501_3000/000118_GemHQ_money-tree.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000118_GemHQ_money-tree.md)

Add this line to your application's Gemfile:

    gem 'money-tree'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install money-tree

----

## Installation [2501_3000/000118_alloy_lowdown.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000118_alloy_lowdown.md)

Add this line to your application's Gemfile:

```ruby
gem 'lowdown'
```

Or install it yourself, for instance for the command-line usage, as:

```
$ gem install lowdown
```

----

## Installation [2501_3000/000118_SebastianSzturo_dokku-cli.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000118_SebastianSzturo_dokku-cli.md)
```
$ gem install dokku-cli
```

----

## Installation [2501_3000/000118_adamcooke_fake-person.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000118_adamcooke_fake-person.md)

Just put the following in your Gemfile and run `bundle`.

```ruby
gem "fake_person", "~> 1.0"
```

----

## Installation [2501_3000/000118_hanami_utils.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000118_hanami_utils.md)

Add this line to your application's Gemfile:

```ruby
gem 'hanami-utils'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hanami-utils

----

## Installation [2501_3000/000118_kishikawakatsumi_xcjobs.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000118_kishikawakatsumi_xcjobs.md)

Add this line to your application's Gemfile:

```ruby
gem 'xcjobs'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install xcjobs

----

## Installation [2501_3000/000118_gjtorikian_graphql-docs.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000118_gjtorikian_graphql-docs.md)

Add this line to your application's Gemfile:

```ruby
gem 'graphql-docs'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install graphql-docs

----

## Installation [2501_3000/000118_mattbrictson_chandler.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000118_mattbrictson_chandler.md)

----

## Installation [2501_3000/000118_maoueh_nugrant.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000118_maoueh_nugrant.md)

----

## Installation [2501_3000/000117_gshutler_useragent.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000117_gshutler_useragent.md)

    gem install useragent

----

## Installation [2501_3000/000117_ua-parser_uap-ruby.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000117_ua-parser_uap-ruby.md)

```bash
$ gem install user_agent_parser
```

----

## Installation [2501_3000/000117_stripe-contrib_stripe-cli.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000117_stripe-contrib_stripe-cli.md)

    $ gem install stripe-cli

----

## Installation [2501_3000/000117_altmetric_embiggen.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000117_altmetric_embiggen.md)

```
gem install embiggen -v '~> 1.5'
```

Or, in your `Gemfile`:

```ruby
gem 'embiggen', '~> 1.5'
```

----

## Installation [2501_3000/000117_jadb_capcake.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000117_jadb_capcake.md)

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.0.0'
gem 'capcake', '~> 3.0.0'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capcake

At this point, you can install capistrano:

    $ cap install

This will create the required files in your `ROOT/config` directory

At any time, for help:

    $ cap -T

----

## Installation [2501_3000/000116_middleman-contrib_middleman-sync.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000116_middleman-contrib_middleman-sync.md)

```ruby
gem 'middleman-sync', '~> 4.0'
```

```ruby
configure :build do
  activate :sync do |config|
    # config.verbose = false  # turn on verbose logging (defaults to false)
    # config.force = false  # force syncing of outdated_files (defaults to false)
    # config.run_on_build = true # when within a framework which `builds` assets, whether to sync afterwards (defaults to true)
    # config.sync_outdated_files = true # when an outdated file is found whether to replace it (defaults to true)
    # config.delete_abandoned_files = true # when an abandoned file is found whether to remove it (defaults to true)
    # config.upload_missing_files = true # when a missing file is found whether to upload it (defaults to true)
    # config.target_pool_size = 8 # how many threads you would like to open for each target (defaults to the amount of CPU core's your machine has)
    # config.max_sync_attempts = 3 # how many times a file should be retried if there was an error during sync (defaults to 3)
  end
end
```

----

## Installation [2501_3000/000116_xero-gateway_xero_gateway.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000116_xero-gateway_xero_gateway.md)

Just add the `xero_gateway` gem to your Gemfile, like so:

```ruby
  gem 'xero_gateway'
```

----

## Installation [2501_3000/000116_yammer_model_attribute.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000116_yammer_model_attribute.md)

Add this line to your application's Gemfile:

```ruby
gem 'model_attribute'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install model_attribute

----

## Installation [2501_3000/000116_razum2um_lurker.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000116_razum2um_lurker.md)

Add my public key:

    gem cert --add <(curl -Ls https://raw.github.com/razum2um/lurker/master/certs/razum2um.pem)

    $ gem install lurker                 # without key
    $ gem install lurker -P HighSecurity # secure, with key added

Or this line to your application's Gemfile:

    gem 'lurker'

Inject into `test_helper.rb` or `spec_helper.rb`:

    require 'lurker/spec_helper'

----

## Installation [2501_3000/000116_arr2036_omnigollum.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000116_arr2036_omnigollum.md)
```sh
$ gem install omnigollum
```

----

## Installation [2501_3000/000116_jsonapi-rb_jsonapi-rails.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000116_jsonapi-rb_jsonapi-rails.md)

Add the following to your application's Gemfile:
```ruby
gem 'jsonapi-rails'
```
And then execute:
```
$ bundle
```

----

## Installation ## [2501_3000/000116_ihoka_viewtastic.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000116_ihoka_viewtastic.md)

Install the gem

    gem install viewtastic

Load the gem in your `environment.rb` file

    config.gem "viewtastic"

----

## Installation [2501_3000/000116_railsware_smt_rails.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000116_railsware_smt_rails.md)

Add this line to your application's Gemfile:

    gem 'smt_rails', :git => 'git://github.com/railsware/smt_rails.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install smt_rails

----

## Installation [3001_3500/000115_allenan_human_time.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000115_allenan_human_time.md)

Add this line to your application's Gemfile:

```ruby
gem 'human_time'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install human_time

----

## Installation [3001_3500/000115_barelyknown_linotype.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000115_barelyknown_linotype.md)

    $ gem install linotype

----

## Installation [3001_3500/000115_bogdan_diffbench.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000115_bogdan_diffbench.md)

``` sh
gem install diffbench
```

----

## Installation [2501_3000/000115_shugo_textbringer.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000115_shugo_textbringer.md)

    $ gem install textbringer

You need ncursesw to use multibyte characters.
Install ncursesw before installing curses.gem, on which textbringer depends.

    $ sudo apt-get install libncursesw5-dev
    $ gem install curses

----

## Installation [3001_3500/000115_daviddarnes_alembic.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000115_daviddarnes_alembic.md)

----

## Installation [2501_3000/000115_pazdera_scriptster.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000115_pazdera_scriptster.md)

Add this line to your application's Gemfile:

    gem 'scriptster'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install scriptster


----

## Installation [2501_3000/000115_yammer_circuitbox.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000115_yammer_circuitbox.md)

Add this line to your application's Gemfile:

    gem 'circuitbox'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install circuitbox

----

## Installation [2501_3000/000115_thebrianemory_corneal.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000115_thebrianemory_corneal.md)

    gem install corneal

----

## Installation [2501_3000/000115_unsplash_unsplash_rb.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000115_unsplash_unsplash_rb.md)

Add this line to your application's Gemfile:

```ruby
gem 'unsplash'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unsplash

----

## Installation [2501_3000/000115_zaru_webpush.md](https://github.com/ts-3156/readmes/blob/master/2501_3000/000115_zaru_webpush.md)

Add this line to your application's Gemfile:

```ruby
gem 'webpush'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install webpush

----

## Installation [3001_3500/000114_tompesman_push-core.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000114_tompesman_push-core.md)

Add to your `GemFile`

    gem 'push-core'

and add the push provider to you Gemfile:

For __APNS__ (iOS: Apple Push Notification Services):

    gem 'push-apns'

For __C2DM__ (Android: Cloud to Device Messaging, deprecated by Google, not this gem):

    gem 'push-c2dm'

For __GCM__ (Android: Google Cloud Messaging):

    gem 'push-gcm'

And run `bundle install` to install the gems.

To generate the migration and the configuration files run:

    rails g push
    bundle exec rake db:migrate

----

## Installation [3001_3500/000114_follmann_middleman-favicon-maker.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000114_follmann_middleman-favicon-maker.md)

----

## Installation [3001_3500/000114_oelmekki_activerecord_any_of.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000114_oelmekki_activerecord_any_of.md)

In your Gemfile :

```
gem 'activerecord_any_of'
```

Activerecord_any_of supports rails >= 3.2.13 and rails-4 (let me know if tests
pass for rails < 3.2.13, I may edit gem dependencies).


----

## Installation [3001_3500/000114_rodjek_puppet-profiler.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000114_rodjek_puppet-profiler.md)

    gem install puppet-profiler

----

## Installation [3001_3500/000114_ruby-grape_grape-active_model_serializers.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000114_ruby-grape_grape-active_model_serializers.md)

Add the `grape` and `grape-active_model_serializers` gems to Gemfile and run `bundle install`.

```ruby
gem 'grape-active_model_serializers'
```

See [UPGRADING](UPGRADING.md) if you're upgrading from a previous version.

----

## Installation [3001_3500/000114_agoragames_amico.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000114_agoragames_amico.md)

`gem install amico`

or in your `Gemfile`

```ruby
gem 'amico'
```

Make sure your redis server is running! Redis configuration is outside the scope of this README, but
check out the [Redis documentation](http://redis.io/documentation).

----

## Installation [3001_3500/000114_txus_explain.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000114_txus_explain.md)

Install Rubinius if you don't have it yet:

    $ rvm install rbx-head
    $ rvm use rbx-head

Install explain as a gem:

    $ gem install explain

----

## Installation [3001_3500/000114_samuelkadolph_unicorn-rails.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000114_samuelkadolph_unicorn-rails.md)

Add this line to your application's `Gemfile`:

    gem "unicorn-rails"

And then execute:

    $ bundle install

----

## Installation [3001_3500/000114_seanchas116_ruby-qml.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000114_seanchas116_ruby-qml.md)

----

## Installation ## [3001_3500/000114_johnsonj_progressive_render.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000114_johnsonj_progressive_render.md)

Add this line to your application's Gemfile and run `bundle install`

```ruby
gem 'progressive_render'
```

Then add the following to your `application.js`:

```javascript
//= require progressive_render
```

If you plan on using the default placeholder, add this to your `application.css`:

```css
/*
 *= require progressive_render
 */
```
----

## Installation [3001_3500/000114_kosmatov_sidekiq-benchmark.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000114_kosmatov_sidekiq-benchmark.md)

Add this line to your application's Gemfile:

    gem 'sidekiq-benchmark'

And then execute:

    $ bundle

----

## Installation [3001_3500/000113_litaio_lita-slack.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000113_litaio_lita-slack.md)

Add **lita-slack** to your Lita instance's Gemfile:

``` ruby
gem "lita-slack"
```

----

## Installation [3001_3500/000113_markmcconachie_normalize-rails.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000113_markmcconachie_normalize-rails.md)

Add this line to your application's Gemfile:

    gem 'normalize-rails'

And then execute:

    $ bundle

----

## Installation [3001_3500/000113_revett_collectd.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000113_revett_collectd.md)

Add this line to your application's Gemfile:

```ruby
gem 'collectd'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install collectd

----

## Installation [3001_3500/000113_lucek_avatarly.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000113_lucek_avatarly.md)

Avatarly requires ImageMagick to be installed.

----

## Installation [3001_3500/000113_EDMC_api-versions.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000113_EDMC_api-versions.md)
In your Gemfile:

    gem "api-versions", "~> 1.0"

----

## Installation [3001_3500/000113_capistrano_rvm.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000113_capistrano_rvm.md)

Add this line to your application's Gemfile:

    # Gemfile
    gem 'capistrano', '~> 3.0'
    gem 'capistrano-rvm'

And then execute:

    $ bundle install

----

## Installation [3001_3500/000113_r7kamura_weak_parameters.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000113_r7kamura_weak_parameters.md)
```ruby
gem "weak_parameters"
```

----

## Installation [3001_3500/000112_amatsuda_kawaii_validation.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000112_amatsuda_kawaii_validation.md)

Gemfile:

    gem 'kawaii_validation'

And then execute:

    $ bundle

----

## Installation [3001_3500/000112_abitdodgy_words_counted.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000112_abitdodgy_words_counted.md)

Add this line to your application's Gemfile:

    gem 'words_counted'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install words_counted

----

## Installation [3001_3500/000112_kalys_capistrano-nginx-unicorn.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000112_kalys_capistrano-nginx-unicorn.md)

Add this line to your application's Gemfile:

    gem 'capistrano-nginx-unicorn', group: :development

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-nginx-unicorn

----

## Installation [3001_3500/000112_nashby_garlicjs-rails.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000112_nashby_garlicjs-rails.md)

Add this line to your application's Gemfile:

    gem 'garlicjs-rails'

----

## Installation [3001_3500/000112_chriswarren_doorkeeper-jwt.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000112_chriswarren_doorkeeper-jwt.md)

Add this line to your application's Gemfile:

```ruby
gem 'doorkeeper-jwt'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install doorkeeper-jwt

----

## Installation [3001_3500/000112_Kerrick_google.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000112_Kerrick_google.md)

    gem install google # Requires Ruby 1.9

----

## Installation [3001_3500/000111_Eric-Guo_weui-rails.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000111_Eric-Guo_weui-rails.md)

Add this line to your application's Gemfile:

    gem 'weui-rails'

And then execute:

    $ bundle

----

## Installation [3001_3500/000111_digitalocean_resource_kit.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000111_digitalocean_resource_kit.md)

Add this line to your application's Gemfile:

    gem 'resource_kit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install resource_kit

----

## Installation [3001_3500/000111_netlify_jekyll-srcset.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000111_netlify_jekyll-srcset.md)

Add this line to your Gemfile:

```ruby
gem 'jekyll-srcset'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-srcset

Then add the gem to your Jekyll `_config.yml`:

```yml
gems:
  - jekyll-srcset
```

----

## Installation [3001_3500/000111_kickstarter_ipcat-ruby.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000111_kickstarter_ipcat-ruby.md)

With bundler:

```ruby
# In Gemfile
gem 'ipcat'
```

Or with rubygems:

```shell
gem install ipcat
```

----

## Installation [3001_3500/000111_pengwynn_rdio-cli.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000111_pengwynn_rdio-cli.md)

```
gem install rdio-cli
```

----

## Installation [3001_3500/000110_seanho_SimpleView.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000110_seanho_SimpleView.md)

Add the gem to your Gemfile

`gem 'simple-view'`

Then `bundle install`

Require SimpleView in Rakefile

```ruby
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'simple-view'

Motion::Project::App.setup do |app|
  ...
end

```

----

## Installation [3001_3500/000110_bagwanpankaj_humongous.markdown](https://github.com/ts-3156/readmes/blob/master/3001_3500/000110_bagwanpankaj_humongous.markdown)

----

## Installation [3001_3500/000110_avdgaag_rpub.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000110_avdgaag_rpub.md)

Rpub is distributed as a Ruby gem, which should be installed on most Macs and
Linux systems. Once you have ensured you have a working installation of Ruby
and Ruby gems, install the gem as follows from the command line:

    $ gem install rpub

You can verify the gem has installed correctly by checking its version number:

    $ rpub -v

If this generates an error, something has gone wrong. You should see something
along the lines of `rpub 1.0.0`.

----

## Installation [3001_3500/000110_curtis_honeypot-captcha.markdown](https://github.com/ts-3156/readmes/blob/master/3001_3500/000110_curtis_honeypot-captcha.markdown)

In your Gemfile, simply add

    gem 'honeypot-captcha'

----

## Installation [3001_3500/000110_ashfurrow_danger-ruby-swiftlint.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000110_ashfurrow_danger-ruby-swiftlint.md)

Add this line to your Gemfile:

```rb
gem 'danger-swiftlint'
```

SwiftLint also needs to be installed before you run Danger, which you can do [via Homebrew](https://github.com/realm/SwiftLint#installation) or a [Brewfile](https://github.com/Homebrew/homebrew-bundle). On CI, this is done for you when the gem is installed.

----

## Installation [3001_3500/000110_flogic_object_daddy.markdown](https://github.com/ts-3156/readmes/blob/master/3001_3500/000110_flogic_object_daddy.markdown)

Presuming your version of Rails has git plugin installation support:

  script/plugin install git://github.com/flogic/object_daddy.git

Otherwise, you can install object_daddy by hand:

1. Unpack the object_daddy directory into vendor/plugins/ in your rails project.
2. Run the object_daddy/install.rb Ruby script.


----

## Installation [3001_3500/000110_exAspArk_graphql-guard.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000110_exAspArk_graphql-guard.md)

Add this line to your application's Gemfile:

```ruby
gem 'graphql-guard'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install graphql-guard

----

## Installation [3001_3500/000109_middleman_middleman-livereload.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000109_middleman_middleman-livereload.md)

If you're just getting started, install the `middleman` gem and generate a new project:

```
gem install middleman
middleman init MY_PROJECT
```

If you already have a Middleman project: Add `gem "middleman-livereload", "~> 3.4.3"` to your `Gemfile` and run `bundle install`

----

## Installation and Usage [3001_3500/000109_eldr-rb_eldr.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000109_eldr-rb_eldr.md)

To install Eldr add the following to your gemfile:

```ruby
gem 'eldr'
# or if you want to use the master branch:
# gem 'eldr', github: 'eldr-rb/eldr'
```

Then run bundler:

```sh
$ bundle
```

To use it you need to create a rackup file. Add the following to a config.ru file:

```ruby
class HelloWorld < Edlr::App
  get '/', proc { [200, {'Content-Type' => 'txt'}, ['Hello World!']]}
end

run HelloWorld
```

Route handlers are anything that respond to call and return a valid Rack response. All the http verbs you expect are available:

```ruby
get '/',  proc { [200, {'Content-Type' => 'txt'}, ['Hello World!']]}
post '/', proc { [201, {'Content-Type' => 'txt'}, ['Hello World!']]}
```

etc...

For further usage examples checkout the [examples folder](https://github.com/eldr-rb/eldr/tree/master/examples)

I have already built and released extensions for many common tasks:

- [eldr-sessions](https://github.com/eldr-rb/eldr-sessions): session helpers like `signed_in?` and `current_user?`
- [eldr-rendering](https://github.com/eldr-rb/eldr-rendering): a `render` helper for templating.
- [eldr-assets](https://github.com/eldr-rb/eldr-assets): asset tag helpers like `js('jquery', 'app')`, `css('app')` etc
- [eldr-responders](https://github.com/eldr-rb/eldr-responders): rails-responder like helpers
- [eldr-action](https://github.com/eldr-rb/eldr-action): Action Objects

----

## Installation [3001_3500/000109_skorks_nesty.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000109_skorks_nesty.md)

Add this line to your application's Gemfile:

    gem 'nesty'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nesty

----

## Installation [3001_3500/000109_focuslight_focuslight.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000109_focuslight_focuslight.md)

Install focuslight with Ruby 2.1 or later. 

----

## Installation ## [3001_3500/000109_paulca_configurable_engine.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000109_paulca_configurable_engine.md)

Configurable is available as a Ruby gem. Simply add it to your Rails 4 app's `Gemfile`:

```ruby
gem 'configurable_engine'
```

Then run the `configurable_engine:install` generator:

```bash
$ rails generate configurable_engine:install
```

----

## Installation [3001_3500/000109_lavmeiker_capistrano-wpcli.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000109_lavmeiker_capistrano-wpcli.md)

Add this line to your application's Gemfile:

    gem 'capistrano-wpcli'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-wpcli

----

## Installation [3001_3500/000109_weltschmerz1_entangled.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000109_weltschmerz1_entangled.md)
Add this line to your application's Gemfile:

```ruby
gem 'entangled'
```

Note that Redis and Puma are required as well. Redis is needed to build the channels clients subscribe to, Puma is needed to handle websockets concurrently.

You need to [install Redis](http://redis.io/download) if you haven't yet. Entangled comes with a [Ruby client for Redis](https://rubygems.org/gems/redis) that will connect to your Redis instance once it's installed.

You also need to add Puma to your Gemfile:

```ruby
gem 'puma'
```

And then execute:

    $ bundle

----

## Installation [3001_3500/000109_leoasis_activerecord-futures.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000109_leoasis_activerecord-futures.md)

Add this line to your application's Gemfile:

    gem 'activerecord-futures'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord-futures

----

## Installation [3001_3500/000109_express42_zabbixapi.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000109_express42_zabbixapi.md)
    gem install zabbixapi

----

## Installation [3001_3500/000109_sufleR_sql_query.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000109_sufleR_sql_query.md)

Add this line to your application's Gemfile:

    gem 'sql_query'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sql_query

----

## Installation [3001_3500/000108_untra_polyglot.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000108_untra_polyglot.md)
Add jekyll-polyglot to your `Gemfile` if you are using Bundler:
```Ruby
group :jekyll_plugins do
   gem "jekyll-polyglot"
end
```

Or install the gem manually by doing `gem install jekyll-polyglot` and specify the plugin using `_config.yml`:
```YAML
plugins:
  - jekyll-polyglot
```

----

## Installation [3001_3500/000108_panorama-ed_order_as_specified.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000108_panorama-ed_order_as_specified.md)

Add this line to your application's Gemfile:

```ruby
gem 'order_as_specified'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install order_as_specified

----

## Installation [3001_3500/000108_mwerner_spigot.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000108_mwerner_spigot.md)

Add this line to your application's Gemfile:

    gem 'spigot'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spigot

----

## Installation [3001_3500/000107_pacuna_dckerize.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000107_pacuna_dckerize.md)

    $ gem install dckerize

----

## Installation [3001_3500/000107_mattolson_heroku_rails_deflate.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000107_mattolson_heroku_rails_deflate.md)

* Add the gem to your app

```ruby
  gem 'heroku_rails_deflate', :group => :production
```

* Make sure asset caching is configured correctly in environments/production.rb:

```ruby
  config.serve_static_assets = true
  config.assets.compress = true
  config.assets.compile = true
  config.assets.digest = true
```

* If you want a different max-age for your static assets, you can override the default:

```ruby
  config.static_cache_control = "public, max-age=31536000"
```

* Optionally, I prefer precompiling assets prior to deploying to Heroku to ensure that assets compile properly (if not, Heroku will enable runtime compilation which will slow your app down tremendously).

```ruby
  RAILS_ENV=production rake assets:precompile
```


----

## Installation [3001_3500/000107_tobie_pdoc.markdown](https://github.com/ts-3156/readmes/blob/master/3001_3500/000107_tobie_pdoc.markdown)

PDoc depends on Rake, your choice of markdown parser, and treetop, all of which can be obtained through RubyGems:

    gem install rake bluecloth treetop
    
----

## Installation [3001_3500/000107_burtlo_yard-cucumber.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000107_burtlo_yard-cucumber.md)

YARD-Cucumber requires the following gems installed:

Gherkin 2.2.9 - http://cukes.info
Cucumber 0.7.5 - http://cukes.info
YARD 0.8.1 - http://yardoc.org

To install `yard-cucumber` use the following command:

```bash
$ gem install yard-cucumber
```

(Add `sudo` if you're installing under a POSIX system as root)

----

## Installation [3001_3500/000107_shaiguitar_haml-i18n-extractor.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000107_shaiguitar_haml-i18n-extractor.md)

`gem install haml-i18n-extractor`

If you want the latest code aka edge, you can also simply clone this repo and install the gem from the root of the repo:

`gem uninstall -x haml-i18n-extractor; rm *gem; gem build *gemspec; gem install --local *gem`

----

## Installation [3001_3500/000107_plaid_plaid-ruby.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000107_plaid_plaid-ruby.md)

Add this line to your application's Gemfile:

```ruby
gem 'plaid'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install plaid

The gem supports Ruby 2.2+ only.

----

## Installation [3001_3500/000107_activeadmin-plugins_active_admin_import.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000107_activeadmin-plugins_active_admin_import.md)

Add this line to your application's Gemfile:

```ruby
gem "active_admin_import"
```
or

```ruby
gem "active_admin_import" , github: "activeadmin-plugins/active_admin_import"
```

And then execute:

    $ bundle


----

## Installation [3001_3500/000107_amakawa_redic.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000107_amakawa_redic.md)

You can install it using rubygems.

```
$ gem install redic
```
----

## Installation [3001_3500/000106_heroku_platform-api.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000106_heroku_platform-api.md)

Add this line to your application's Gemfile:

```
gem 'platform-api'
```

And then execute:

```
bundle
```

Or install it yourself as:

```
gem install platform-api
```

----

## Installation [3001_3500/000106_north_Style-Prototypes.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000106_north_Style-Prototypes.md)

For setting up a new Style Prototype generator, see [these instructions](https://github.com/north/generator-Style-Prototype#installation).

----

## Installation [3001_3500/000106_mvz_happymapper.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000106_mvz_happymapper.md)

Install via rubygems:

    $ gem install nokogiri-happymapper

Or add the `nokogiri-happymapper` gem to your project's `Gemfile`.

    gem 'nokogiri-happymapper', require: 'happymapper'

You can now also require `nokogiri-happymapper` directly.

    gem 'nokogiri-happymapper'

Run Bundler to install the gem:

    $ bundle install

----

## Installation [3001_3500/000106_keithpitt_vendor.markdown](https://github.com/ts-3156/readmes/blob/master/3001_3500/000106_keithpitt_vendor.markdown)

If you have [RVM](http://beginrescueend.com/rvm/install/) installed, simply run:

```bash
$ gem install vendor
```

Otherwise, you'll need to:

```bash
$ sudo gem install vendor
```

----

## Installation [3001_3500/000105_steventen_sql_tracker.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000105_steventen_sql_tracker.md)

Add this line to your application's Gemfile:

```ruby
group :development, :test do
  ... ...
  gem 'sql_tracker'
end
```

And then execute:

    $ bundle


----

## Installation [3001_3500/000105_adamcooke_rails-safe-tasks.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000105_adamcooke_rails-safe-tasks.md)

To install, just add to your Gemfile and run `bundle`.

```ruby
gem 'rails_safe_tasks', '~> 1.0'
```

----

## Installation [3001_3500/000105_printercu_rails_stuff.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000105_printercu_rails_stuff.md)

Add this line to your application's Gemfile:

```ruby
gem 'rails_stuff'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_stuff

----

## Installation [3001_3500/000105_metaware_underlock.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000105_metaware_underlock.md)

Add this line to your application's Gemfile:

```ruby
gem 'underlock'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install underlock

----

## Installation [3001_3500/000105_zerowidth_ringleader.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000105_zerowidth_ringleader.md)

    $ gem install ringleader
    $ ringleader --help

----

## Installation [3001_3500/000105_mattpolito_paratrooper.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000105_mattpolito_paratrooper.md)

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

----

## Installation [3001_3500/000105_samtgarson_vueport.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000105_samtgarson_vueport.md)

Add this line to your application's Gemfile:

```ruby
gem 'vueport'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vueport

Then just run 

```shell
rails generate vueport:install
```

to bootstrap everything you need to get started (this will install WebpackRails and also everything Vueport needs on top).

To run your app, execute

```shell
bundle exec foreman start -f Procfile.dev
```

to boot the Webpack Dev server and your Rails app!

----

## Installation [3001_3500/000104_leemachin_ask_awesomely.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000104_leemachin_ask_awesomely.md)

Prepare your best [Jamie Oliver](https://en.wikipedia.org/wiki/Jamie_Oliver) impression and bang this in yer Gemfile:

```ruby
gem 'ask_awesomely'
```

Turn your CPU up to 80ºC and let it simmer for a while with this:

```shell
bundle install
```

Or install it yourself as:

```shell
gem install ask_awesomely
```

Then include it in your code like this:

```ruby
require "ask_awesomely"
```

----

## Installation [3001_3500/000104_salesking_sepa_king.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000104_salesking_sepa_king.md)

    gem install sepa_king


----

## Installation [3001_3500/000104_palkan_n_plus_one_control.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000104_palkan_n_plus_one_control.md)

Add this line to your application's Gemfile:

```ruby
group :test do
  gem 'n_plus_one_control'
end
```

And then execute:

    $ bundle

----

## Installation [3001_3500/000104_imikimi_literate_randomizer.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000104_imikimi_literate_randomizer.md)

Add this line to your application's Gemfile:

    gem 'literate_randomizer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install literate_randomizer

----

## Installation [3001_3500/000104_Sharagoz_rails_exception_handler.markdown](https://github.com/ts-3156/readmes/blob/master/3001_3500/000104_Sharagoz_rails_exception_handler.markdown)
Add the line below to your gemfile and run bundler

```
gem 'rails_exception_handler', "~> 2"
```

Generate an initializer:

```
rails g rails_exception_handler:install
```

Open config/initializers/rails_exception_handler.rb, have a quick look and read on.

----

## Installation [3001_3500/000104_melekes_valle.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000104_melekes_valle.md)

Add this line to your application's Gemfile:

    gem 'valle'

And then execute:

    $ bundle

Or install it yourself:

    $ gem install valle

If you are using other framework than Rails (e.g. Sinatra), call `Valle::Hooks.init` method during the boot process.

----

## Installation [3001_3500/000104_evrone_capistrano-team_notifications.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000104_evrone_capistrano-team_notifications.md)

Add this line to your application's Gemfile:

    gem 'capistrano-team_notifications', group: [:development]

or if you use Capistrano v2

    gem 'capistrano-team_notifications', '~> 2'

And then execute:

    $ bundle

----

## Installation [3001_3500/000104_stephskardal_rails_admin_import.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000104_stephskardal_rails_admin_import.md)

* First, add to Gemfile:

```
gem "rails_admin_import", "~> 2.1"
```

* Define configuration in `config/initializers/rails_admin_import.rb`:

```ruby
RailsAdmin.config do |config|
  # REQUIRED:
  # Include the import action
  # See https://github.com/sferik/rails_admin/wiki/Actions
  config.actions do
    all
    import
  end

  # Optional:
  # Configure global RailsAdminImport options
  config.configure_with(:import) do |config|
    config.logging = true
  end

  # Optional:
  # Configure model-specific options using standard RailsAdmin DSL
  # See https://github.com/sferik/rails_admin/wiki/Railsadmin-DSL
  config.model 'User' do
    import do
      include_all_fields
      exclude_fields :secret_token
    end
  end
end
```

* If you are using CanCanCan for authorization, add to ability.rb to specify which models can be imported:

```ruby
cannot :import, :all
can :import, [User, Model1, Model2]
```

----

## Installation [3001_3500/000104_marjinal1st_medium-editor-rails.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000104_marjinal1st_medium-editor-rails.md)

Include **medium-editor-rails** in your Rails project's Gemfile:

```ruby
gem 'medium-editor-rails'
```

And then execute:

```bash
bundle install
```

----

## Installation [3001_3500/000103_makandra_spreewald.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000103_makandra_spreewald.md)

Add this line to your application's Gemfile:

    gem 'spreewald'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spreewald


----

## Installation [3001_3500/000103_simi_mongoid_paranoia.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000103_simi_mongoid_paranoia.md)

Add this line to your application's Gemfile:

```ruby
gem 'mongoid_paranoia'
```

----

## Installation [3001_3500/000103_ndbroadbent_libreconv.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000103_ndbroadbent_libreconv.md)

Add this line to your application's Gemfile:

    gem 'libreconv'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install libreconv

----

## Installation [3001_3500/000103_ruby-formatter_rufo.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000103_ruby-formatter_rufo.md)

Add this line to your application's Gemfile:

```ruby
gem 'rufo'
```

And then execute:

    $ bundle

Or install it system wide with:

    $ gem install rufo

----

## Installation [3001_3500/000103_mokolabs_trucker.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000103_mokolabs_trucker.md)

1. Install the trucker gem
  ```bash
  sudo gem install trucker
  ```

2. Add trucker to your `config.gem` block in `environment.rb`.
  ```ruby  
  config.gem "trucker"
  ```

3. Generate the basic trucker files
  ```bash
  script/generate truck
  ```

  This will do the following things:
  - Add legacy adapter to `database.yml`
  - Add `app/models/legacy` directory
  - Add `app/models/legacy` to `autoload_paths` in Rails Initializer config block
  - Add `app/models/legacy/legacy_base.rb` (from which legacy models will inherit)
  - Add legacy sub classes for all existing models
  - Generate sample migration task (using pluralized model names)
  
4. Update the legacy database adapter in `database.yml` with your legacy database info

  ```yaml
  legacy:
    adapter: mysql
    encoding: utf8
    database: app_legacy
    username: root
    password:
  ```

  By convention, we recommend naming your legacy database `APP_legacy`, just as your
  other databases might be named `APP_development`, `APP_production`, etc.

5. If the legacy database doesn't already exist, add it.
  ```bash
  rake db:create:all
  ```

6. Import your legacy data into the legacy database.
  ```bash
  mysql -u root app_legacy < old_database.sql
  ```
  
  If you're not using mysql, you should change this command as needed.
  
7. Custom your table name for each of your legacy models.
  ```ruby
  class LegacyPost < LegacyBase
    self.table_name =  "LEGACY_TABLE_NAME_GOES_HERE"
  end
  ```
  
  Since you're migrating data from an old database, your table names may not 
  follow Rails conventions for database table naming. If so, you will need to 
  set the `self.table_name = ` value for each of your legacy models to match the 
  name of table from which you will be importing data.
  
  For instance, in the example above, if your old posts were stored in an 
  `articles` table, you would customize `self.table_name = ` like so:
  
  ```ruby
  class LegacyPost < LegacyBase
    self.table_name =  "articles"
  end
  ```
  
8. Update legacy model field mappings.

  ```ruby
  class LegacyPost < LegacyBase
    self.table_name =  "LEGACY_TABLE_NAME_GOES_HERE"

    def map
      {
        :headline => self.title.squish,
        :body => self.long_text.squish
      }
    end
  end
  ```

  This is where you will connect your old database attributes with your new ones. 
  The map method is really just a hash which uses your new model attribute names
  as keys and your legacy model attributes as values.
  
  (aka `:new_field => self.legacy_field`)
  
  Note: make sure to add `self.` to each legacy attribute name.
    
9. Need to tweak some data? Just add some core ruby methods or add a helper method.

  ```ruby
  class LegacyPost < LegacyBase
    self.table_name =  "LEGACY_TABLE_NAME_GOES_HERE"

    def map
      {
        :headline => self.title.squish.capitalize, # <= Added capitalize method
        :body => tweak_body(self.long_text.squish) # <= Added tweak_body method
      }
    end
  
    # Insert helper methods as needed
    def tweak_body(body)
      body = body.gsub(/<br \//,"\n") # <= Convert break tags into normal line breaks
      body = body.gsub(/teh/, "the")  # <= Fix common typos
    end
  end
  ```
  
10. Start migrating!
  ```bash
  rake db:migrate:posts
  ```

----

## Installation [3001_3500/000103_visoft_ruby_odata.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000103_visoft_ruby_odata.md)
You can install ruby_odata as a gem using:

    gem install ruby_odata

----

## Installation [3001_3500/000103_piotrmurach_rspec-benchmark.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000103_piotrmurach_rspec-benchmark.md)

Add this line to your application's Gemfile:

```ruby
gem 'rspec-benchmark'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-benchmark

----

## Installation [3001_3500/000103_dmarcotte_github-markdown-preview.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000103_dmarcotte_github-markdown-preview.md)
```
gem install github-markdown-preview
```

----

## Installation [3001_3500/000102_elabs_serial.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000102_elabs_serial.md)

Add this line to your application's Gemfile:

```ruby
gem "serial"
```

And then execute:

    $ bundle

----

## Installation [3001_3500/000102_ifad_chronomodel.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000102_ifad_chronomodel.md)

Add this line to your application's Gemfile:

    gem 'chrono_model'

And then execute:

    $ bundle


----

## Installation [3001_3500/000102_spreedly_spreedly-gem.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000102_spreedly_spreedly-gem.md)

If you're using bundler, add the gem to your Gemfile:

    gem 'spreedly'

Otherwise gem install:

    $ gem install spreedly


----

## Installation [3001_3500/000102_balinterdi_i15r.markdown](https://github.com/ts-3156/readmes/blob/master/3001_3500/000102_balinterdi_i15r.markdown)

----

## Installation [3001_3500/000102_mattwynne_ssh-forever.markdown](https://github.com/ts-3156/readmes/blob/master/3001_3500/000102_mattwynne_ssh-forever.markdown)

    gem install ssh-forever

----

## Installation [3001_3500/000102_michelson_BigBroda.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000102_michelson_BigBroda.md)

Add 'bigbroda' to your application's Gemfile or install it yourself as:

    $ gem install bigbroda

----

## Installation [3001_3500/000102_voxpupuli_vagrant-librarian-puppet.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000102_voxpupuli_vagrant-librarian-puppet.md)

``` bash
vagrant plugin install vagrant-librarian-puppet
```

----

## Installation [3001_3500/000102_seratch_rspec-kickstarter.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000102_seratch_rspec-kickstarter.md)

https://rubygems.org/gems/rspec-kickstarter

    gem install rspec-kickstarter

----

## Installation [3001_3500/000101_capistrano_passenger.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000101_capistrano_passenger.md)

Add this line to your application's Gemfile:

``` ruby
gem 'capistrano-passenger'
```

And then execute:

``` bash
$ bundle
```

Or install it yourself as:

``` bash
$ gem install capistrano-passenger
```

----

## Installation [3001_3500/000101_iphoting_ovpnmcgen.rb.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000101_iphoting_ovpnmcgen.rb.md)

Install the production version from Rubygems.org:

    $ gem install ovpnmcgen.rb

----

## Installation [3001_3500/000101_Shopify_verdict.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000101_Shopify_verdict.md)

Add this line to your application's Gemfile, and run `bundle install`:

    gem 'verdict'

If you're using Rails, the Railtie will handle setting the logger to `Rails.logger` and the experiments directory to `app/experiments`. It will also load the rake tasks for you (run `bundle exec rake -T | grep experiments:` for options).

----

## Installation [3001_3500/000101_lyonrb_biceps.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000101_lyonrb_biceps.md)

Biceps heavily uses the convention over configuration principle.
To install it, you just need to add it to your Gemfile.

    gem 'biceps'

----

## Installation [3001_3500/000101_shuber_proxy.markdown](https://github.com/ts-3156/readmes/blob/master/3001_3500/000101_shuber_proxy.markdown)

	script/plugin install git://github.com/shuber/proxy.git
	OR
	gem install proxy


----

## Installation [3001_3500/000101_octopress_ink.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000101_octopress_ink.md)

Add this line to your application's Gemfile:

    gem 'octopress-ink'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install octopress-ink

----

## Installation [3001_3500/000101_jvillarejo_spyme.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000101_jvillarejo_spyme.md)

Add this line to your application's Gemfile:

```ruby
gem 'spyme'
```

Lastly, include the javascript file in `app/assets/javascripts/application.js` after jQuery.

```javascript
//= require jquery
//= require spyme
```

----

## Installation & Usage [3001_3500/000101_endoze_mina-multistage.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000101_endoze_mina-multistage.md)

Add this line to your application's Gemfile:

```rb
gem 'mina-multistage', require: false
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install mina-multistage
```

Require `mina/multistage` in your `config/deploy.rb`:

```rb
require 'mina/multistage'
require 'mina/bundler'
require 'mina/rails'
require 'mina/git'

...

task setup: :environment do
  ...
end

desc 'Deploys the current version to the server.'
task deploy: :environment do
  ...
end
```

Then run:

```shell
$ bundle exec mina multistage:init
```

This will create `config/deploy/staging.rb` and `config/deploy/production.rb` stage files.
Use them to define stage specific configuration.

```rb
# config/deploy/staging.rb
set :domain, 'example.com'
set :deploy_to, '/var/www/my_app'
set :repository, 'https://github.com/user/repo'
set :branch, 'master'
set :user, 'www'
set :rails_env, 'staging'
```

If you receive the following error, make sure that you've required 'mina/multistage' in
your `config/deploy.rb`

```shell
$ bundle exec mina multistage:init
mina aborted!
Don't know how to build task 'multistage:init'
```

Now you can deploy the default stage with:

```shell
$ mina deploy # this deploys staging by default
```

Or specify a stage explicitly:

```shell
$ mina staging deploy
$ mina production deploy
```


----

## Installation [3001_3500/000101_chrishunt_rubiks-cube.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000101_chrishunt_rubiks-cube.md)

```bash
$ gem install rubiks_cube
```

----

## Installation [3001_3500/000100_maccman_sinatra-pubsub.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000100_maccman_sinatra-pubsub.md)

Add this line to your application's Gemfile:

    gem 'sinatra-pubsub'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sinatra-pubsub

----

## Installation [3001_3500/000100_matiasgagliano_action_access.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000100_matiasgagliano_action_access.md)

Add `action_access` to the app's Gemfile, run the `bundle` command and restart
any running server.

```ruby
# Gemfile
gem 'action_access'
```


----

## Installation [3001_3500/000100_aserafin_grape_logging.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000100_aserafin_grape_logging.md)

Add this line to your application's Gemfile:

    gem 'grape_logging'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install grape_logging

----

## Installation [3001_3500/000100_sferik_mtgox.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000100_sferik_mtgox.md)
    gem install mtgox

----

## Installation [3001_3500/000100_AlexanderZaytsev_domp.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000100_AlexanderZaytsev_domp.md)

    $ gem install domp

----

## Installation [3001_3500/000100_dalibor_octoshark.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000100_dalibor_octoshark.md)

Add this line to your application's Gemfile:

```
gem 'octoshark'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install octoshark
```


----

## Installation [3001_3500/000100_dylanvaughn_aws_cf_signer.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000100_dylanvaughn_aws_cf_signer.md)

In your Gemfile.

    gem 'aws_cf_signer'

Or on your system.

    gem install aws_cf_signer

----

## Installation [3001_3500/000100_yob_em-ftpd.markdown](https://github.com/ts-3156/readmes/blob/master/3001_3500/000100_yob_em-ftpd.markdown)

    gem install em-ftpd

----

## Installation [3001_3500/000100_sonots_activerecord-refresh_connection.md](https://github.com/ts-3156/readmes/blob/master/3001_3500/000100_sonots_activerecord-refresh_connection.md)

Add the following to your `Gemfile`:

```ruby
gem 'activerecord-refresh_connection'
```

And then execute:

```plain
$ bundle
```

----

