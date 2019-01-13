# Bootscale

[![Build Status](https://travis-ci.org/byroot/bootscale.svg)](http://travis-ci.org/byroot/bootscale)
[![Gem Version](https://badge.fury.io/rb/bootscale.png)](http://badge.fury.io/rb/byroot/bootscale)

Speedup applications boot by caching file locations during require calls.

Speed gain depends on your number of gems. Under 100 gems you likely won't see the difference,
but for bigger applications it can save 1 to 3 seconds of boot time per 100 used gems.

## Installation

```ruby
# Gemfile
gem 'bootscale', require: false
```

### Important

For correctness cache should be updated everytime `$LOAD_PATH` is modified by calling `Bootscale.regenerate`.

For Rails apps it means adding an initializer in `config/application.rb`.

```ruby
module MyApp
  class Application < Rails::Application
    initializer :regenerate_require_cache, before: :load_environment_config do
      Bootscale.regenerate
    end
  end
end
```

### Rails applications

Locate `require 'bundler/setup'` in `config/boot.rb` and add `require 'bootscale/rails'` after it:

```ruby
require 'bundler/setup'
require 'bootscale/rails'
```

### Other Bundler enabled applications

Locate `require 'bundler/setup'`, and add `require 'bootscale/setup'` after it:

```ruby
require 'bundler/setup'
require 'bootscale/setup'
```

## Faster cache loading

In order to gain ~10-30ms of extra load speed, you can use the msgpack gem:

```ruby
# Gemfile
gem 'msgpack',   require: false
gem 'bootscale', require: false
```

```ruby
# config/boot.rb (or wherever you have the require of bundler/setup)
require 'bundler/setup'
require 'msgpack'
require 'bootscale/setup' # or require 'bootscale/rails'
```

## Under the hood

Bootscale caches the absolute location of all requirable files on the $LOAD_PATH and
patches `require` + `autoload` to use these absolute paths, thereby avoiding having to check all load paths for every require.

Problem outlined in this [talk](https://www.youtube.com/watch?v=kwkbrOwLsZY)

## Troubleshooting

If you're experiencing problems with loading your application, especially after moving files around, try deleting the `tmp/bootscale` folder.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/byroot/bootscale.

Local development: your load time will be very slow when using a local copy for development like `gem 'bootscale', path: '~/Code/bootscal'`, use via git instead.

Thanks to Aaron Patterson for the idea of converting relative paths to absolute paths.
