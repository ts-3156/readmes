# Gemrat

Add the latest version of a gem to your Gemfile from the command line.

* No need to search RubyGems for version numbers
* No need to edit your Gemfile directly
* Gemrat bundles automatically

## Usage
Add the latest version of a gem to your Gemfile and bundle
<pre>
$ gemrat gem_name
</pre>

Add the latest version of sinatra to your Gemfile and bundle
<pre>
$ gemrat sinatra

#=> gem 'sinatra', '1.4.3' added to your Gemfile.
#=> Bundling...
</pre>

Add multiple gems
<pre>
$ gemrat rspec capybara sidekiq

#=> gem 'rspec', '2.13.0' added to your Gemfile.
#=> gem 'capybara', '2.1.0' added to your Gemfile.
#=> gem 'sidekiq', '2.12.4' added to your Gemfile.
#=> Bundling...
</pre>

Get help
<pre>
$ gemrat

Gemrat

Add gems to Gemfile from the command line.

Usage: gemrat [GEM_NAME] [OPTIONS]

Options:

    -g, --gemfile GEMFILE            # Specify the Gemfile to be used, defaults to 'Gemfile'
        --no-install                 # Skip executing bundle after adding the gem.
        --no-version                 # Do not add a version to the gemfile.
    -p, --pessimistic                # Add gem with a pessimistic operator (~>)
    -o, --optimistic                 # Add gem with an optimistic operator (>=)
    -v, --version                    # Show current gemrat version.
    -h, --help                       # Print these usage instructions.
</pre>
<br/>

![gemrat](http://i.qkme.me/3ut4r1.jpg)

## Installation

Add this line to your application's Gemfile:

    gem 'gemrat'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gemrat

## Development

Run the entire test suite with:

<pre>
$ rake
</pre>

We encourage you to run

<pre>
$ guard
</pre>

in development, because it's awesome!
