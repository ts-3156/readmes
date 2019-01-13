# Prickle

[![Build Status](https://secure.travis-ci.org/ExtractMethod/prickle.png)](http://travis-ci.org/ExtractMethod/prickle) [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/ExtractMethod/prickle)

![](http://github.com/despo/prickle/raw/master/prickle.png)

## Configuration

To install prickle execute

```ruby
gem install prickle
```

Configure by updating the *features/support/env.rb* to include the following:

```ruby
require 'prickle/capybara'    # require


World do
   include Capybara::DSL
   include Prickle::Capybara  # include  Prickle
end
```

*For Capybara 2.0, make sure you are using prickle ≥ 0.1.0*

## Waiting for elements to become visible

To enable this feature you need to set the *Prickle::Capybara.wait_time* property.

```ruby
Prickle::Capybara.wait_time = 5
```

If you only want to extend the wait time for a particular feature, then you need to reset the wait time using *Prickle::Capybara = nil* after your call..

```ruby
Prickle::Capybara.wait_time = 5
element(:href => "http://google.com").click
Prickle::Capybara.wait_time = nil             # reset wait time
```

## Usage

### Find elements by any html tag(s)

```ruby
element(:href => "http://google.com")
element(:name => "blue")
element(:id => "key")
element(:class => "key", :id => "button")
```

You can also find elements by a value contained in the identifier

```ruby
element(:name.like => "blue") # will match <button name="blue_12345">
```

### Find elements by type and html tag(s)

```ruby
element(:link, :href => "http://google.com")    # you can also use link and paragraph (instead of a and p)
element(:input, :name => "blue")
```

### Apply a search, a click or a text matcher

```ruby

element(:name => "flower").exists?
element(:name => "flower").click
element(:name => "flower").contains_text? "Roses"
element(:name => "flower").has_text? "Anemone"  # exact match
```

### Popup

**Selenium**

```ruby
popup.confirm
popup.dismiss
popup.message

popup.contains_message? "<text>"
```

**Webkit**

```ruby
popup.confirm {
  #block that triggers confirmation dialog
}

popup.dismiss {
  #block that triggers confirmation dialog
}

popup.accept {
  #block that triggers alert
}
```

Verifying popup messages

```ruby

alert = popup.accept {
  #block that triggers alert
}

alert.contains_message? "<text>"

```


## Alternative syntax

### Find

```ruby
find_by_name "green"
find_button_by_name "green" #find_<element_tag>_by_name "<name>"
```

### Click

```ruby
click_by_name "blue"
click_input_by_name "blue" #click_<element_tag>_by_name "<name>"
```

### Match text

```ruby
div_contains_text? "text" #<element_tag>_contains_text? "text"
```

## Capturing screenshots

Configure the directory where you want the screenshots to be saved

```ruby
Prickle::Capybara.image_dir = File.dirname(__FILE__) + "/screenshots/"
```

```ruby
capture_screen
capture_screen "<file>"
```
