# Recommendable

Recommendable is a gem that allows you to quickly add a recommendation engine for Likes and Dislikes to your Ruby application using my version of [Jaccardian similarity and memory-based collaborative filtering][collaborative filtering].

## Requirements

* Ruby >= 1.9.3
* ActiveRecord, Sequel, DataMapper, Mongoid, or MongoMapper (your models must have an `id` field)
* [Sidekiq][sidekiq], [Resque][resque], or [DelayedJob][delayed-job] (optional but highly recommended)

Bundling one of the queueing systems above is highly recommended to avoid having to manually refresh users' recommendations. If you bundle [Sidekiq][sidekiq], you should also include ['sidekiq-middleware'][sidekiq-middleware] in your Gemfile to ensure that a user will not get enqueued more than once at a time. If bundling [Resque][resque], you should include ['resque-loner'][resque-loner] for this. As far as I know, there is no current way to avoid duplicate jobs in [DelayedJob][delayed-job]. Queueing for [Torquebox][torquebox] is also supported.

## Installation

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

## Usage

In your model that will be receiving recommendations:

```ruby
class User
  recommends :movies, :books, :minerals, :other_things

  # ...
end
```

To ensure that users' recommendations are processed after they rate items, make sure your bundled queue system is running:

```bash
# sidekiq
$ [bundle exec] sidekiq -q recommendable
# resque
$ QUEUE=recommendable [bundle exec] rake environment resque:work
# delayed_job
$ [bundle exec] rake jobs:work
```

That's it! Please note, however, that currently only one model may receive recommendations.

For more details on how to use Recommendable in your application, [check out the detailed guide][recommendable] or see the [documentation][documentation].

## Installing Redis

Recommendable requires Redis to deliver recommendations. The collaborative filtering logic is based almost entirely on set math, and Redis is blazing fast for this.

_NOTE: Your Redis database **MUST** be persistent. All ratings are stored permanently in Redis. If you're worried about Redis losing data, keep backups._

### Mac OS X

For Mac OS X users, homebrew is by far the easiest way to install Redis. Make sure to read the caveats after installation!

```bash
$ brew install redis
```

### Linux

For Linux users, there is a package on apt-get.

```bash
$ sudo apt-get install redis-server
$ redis-server
```

Redis will now be running on localhost:6379. After a second, you can hit `ctrl-\` to detach and keep Redis running in the background.

## Why not stars?

I'll let Randall Munroe of [XKCD](http://xkcd.com/) take this one for me:

[![I got lost and wandered into the world's creepiest cemetery, where the headstones just had names and star ratings. Freaked me out. When I got home I tried to leave the cemetery a bad review on Yelp, but as my hand hovered over the 'one star' button I felt this distant chill ...](http://imgs.xkcd.com/comics/star_ratings.png)](http://xkcd.com/1098/)

## Links

[![Build Status][travis-badge]][travis] [![Coverage][coveralls-badge]][coveralls] [![Climate][code-climate-badge]][code-climate] [![Dependencies][gemnasium-badge]][gemnasium] [![gittip][gittip-badge]][gittip]

* Code: `git clone git://github.com/davidcelis/recommendable.git`
* Home: <http://github.com/davidcelis/recommendable>
* Docs: <http://rubydoc.info/gems/recommendable/frames>
* Bugs: <http://github.com/davidcelis/recommendable/issues>
* Gems: <http://rubygems.org/gems/recommendable>

[stars]: http://davidcelis.com/blog/2012/02/01/why-i-hate-five-star-ratings/
[sidekiq]: https://github.com/mperham/sidekiq
[sidekiq-middleware]: https://github.com/krasnoukhov/sidekiq-middleware
[delayed-job]: https://github.com/tobi/delayed_job
[resque]: https://github.com/defunkt/resque
[resque-loner]: https://github.com/jayniz/resque-loner
[torquebox]: https://github.com/torquebox/torquebox
[collaborative filtering]: http://davidcelis.com/blog/2012/02/07/collaborative-filtering-with-likes-and-dislikes/
[recommendable]: http://davidcelis.github.com/recommendable/
[documentation]: http://rubydoc.info/gems/recommendable/frames

[travis]: https://travis-ci.org/davidcelis/recommendable
[travis-badge]: http://img.shields.io/travis/davidcelis/recommendable/master.svg
[coveralls]: https://coveralls.io/r/davidcelis/recommendable
[coveralls-badge]: http://img.shields.io/coveralls/davidcelis/recommendable/master.svg
[code-climate]: https://codeclimate.com/github/davidcelis/recommendable
[code-climate-badge]: http://img.shields.io/codeclimate/github/davidcelis/recommendable.svg
[gemnasium]: http://gemnasium.com/davidcelis/recommendable
[gemnasium-badge]: http://img.shields.io/gemnasium/davidcelis/recommendable.svg
[gittip]: https://gittip.com/davidcelis
[gittip-badge]: http://img.shields.io/gittip/davidcelis.svg
