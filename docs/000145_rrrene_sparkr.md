# Sparkr [![Build Status](https://travis-ci.org/rrrene/sparkr.png?branch=master)](https://travis-ci.org/rrrene/sparkr) [![Code Climate](https://codeclimate.com/github/rrrene/sparkr.png)](https://codeclimate.com/github/rrrene/sparkr) [![Inline docs](http://inch-ci.org/github/rrrene/sparkr.png)](http://inch-ci.org/github/rrrene/sparkr)

Sparkr is a port of [spark](https://github.com/holman/spark) for Ruby.

It lets you create ASCII sparklines for your Ruby CLIs: ▁▂▃▅▇



## Installation

Add this line to your application's Gemfile:

    gem 'sparkr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sparkr



## Usage

### Shell

After installation, just run `sparkr` and pass it a list of numbers, like
you would with [spark](https://github.com/holman/spark). The output is what
you would expect:

    $ sparkr 0 30 55 80 33 150
    ▁▂▃▅▂▇

It is also possible to pipe data into `sparkr`:

    $ echo 9 13 5 17 1 | sparkr
    ▄▆▂█▁

### Ruby

The real reason for this port:

    Sparkr.sparkline([0, 30, 55, 80, 33, 150])
    # => "▁▂▃▅▂▇"


### Coloring

Let's say you have your list of open and closed issues.

```ruby
require 'sparkr'

open_issue_count = 3
closed_issue_count = 13

list = [open_issue_count, closed_issue_count]
puts "Issues: " + Sparkr.sparkline(list)
# => "Issues: ▁█"
```

But now you want to format the sparkline so that the open issues are red
and the closed ones are green (to quickly see how you are doing).

Let's further suppose you use a gem that adds a `#color` method to `String`
for ANSI coloring, like
[Term::ANSIColor](https://github.com/flori/term-ansicolor).

```ruby
require 'sparkr'
require 'term/ansicolor'

class String
  include Term::ANSIColor
end

open_issue_count = 3
closed_issue_count = 13

list = [open_issue_count, closed_issue_count]
sparkline = Sparkr.sparkline(list) do |tick, count, index|
  if index == 0
    tick.color(:red)
  else
    tick.color(:green)
  end
end
puts "Issues: " + sparkline
# => "Issues: ▁█" (colored, trust me)
```

To see how this looks live and in full colour, take a look at
[Inch](http://rrrene.github.io/inch).



## Contributing

1. Fork it ( http://github.com/rrrene/sparkr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request



## Author

René Föhring (@rrrene)



## Credits

Sparkr would not exist without Zach Holman's [spark](https://github.com/holman/spark).



## License

Sparkr is released under the MIT License. See the LICENSE.txt file for further
details.
