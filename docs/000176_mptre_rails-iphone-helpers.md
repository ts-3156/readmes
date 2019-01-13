# iPhone Helpers [![Continuous Integration](https://travis-ci.org/mptre/rails-iphone-helpers.png?branch=master)](https://travis-ci.org/mptre/rails-iphone-helpers)

Tailor made gem for Ruby on Rails providing helpers used to generate iPhone specific HTML tags.

## Installation

Add this line to your application's Gemfile:

### Rails 4

```ruby
gem 'iphone_helpers', '~> 3.0.0'
```

### Rails 3

```ruby
gem 'iphone_helpers', '~> 2.0.0'
```

And then run:

```bash
$ bundle
```

Or install without using Bundler:

```bash
$ gem install iphone_helpers
```

## Examples

### viewport

```erb
<%= iphone :viewport %>
```

### viewport with custom attributes

```erb
<%= iphone :viewport, width: 320, height: 480, initial_scale: 2.5, minimum_scale: 0.5, maximum_scale: 3, user_scalable: 'no' %>
```

### apple touch icon

```erb
<%= iphone :icon, href: asset_path('iphone.png') %>
```

### apple touch icon precomposed

```erb
<%= iphone :icon, href: asset_path('iphone.png'), precomposed: true %>
```

### apple touch startup image

```erb
<%= iphone :splash, href: asset_path('splash.png') %>
```

### apple mobile web app status bar style

```erb
<%= iphone :status_bar %>
```

### apple mobile web app status bar style black

```erb
<%= iphone :status_bar, color: 'black' %>
```

### apple mobile web app status bar style black translucent

```erb
<%= iphone :status_bar, color: 'black-translucent' %>
```

### disable telephone format detection

```erb
<%= iphone :format_detection, telephone: false %>
```

### enable telephone format detection

```erb
<%= iphone :format_detection, telephone: true %>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License

Copyright (c) 2010 [Anton Lindqvist](http://qvister.se), released under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
