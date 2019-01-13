RSpec Notification Center
=========================

[![Build Status](https://img.shields.io/travis/twe4ked/rspec-nc.svg?style=flat-square)](https://travis-ci.org/twe4ked/rspec-nc)

rspec-nc is an RSpec formatter for Mountain Lion's Notification Center.

![Screenshot](http://twe4ked.github.io/rspec-nc/rspec-nc.jpg)

Installation
------------

Installing rspec-nc is easy.
Just put it in your Gemfile (`gem 'rspec-nc', require: false`) and run your specs:

```
rspec --format=doc --format=Nc
```

You will want to specify another formatter as rspec-nc does not provide any
other output.

If you want to use rspec-nc as your default formatter, simply put this option
in your .rspec file:

```
--format Nc
```

There are two other formatters included:

- `NcFail` – Only notifies if there is a failure
- `NcFirstFail` – Only notifies on the first failure

### tmux

Using rspec-nc under tmux requires `reattach-to-user-namespace`,
see: [julienXX/terminal-notifier#115].

Contributing
------------

Found an issue? Have a great idea? Want to help? Great! Create an issue issue
for it, or even better; fork the project and fix the problem yourself. Pull
requests are always welcome. :)

### Running the specs

``` ruby
rake

# with a formatter
FORMATTER=Nc rake
```

[julienXX/terminal-notifier#115]: https://github.com/julienXX/terminal-notifier/issues/115
