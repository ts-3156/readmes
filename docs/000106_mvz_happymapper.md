# HappyMapper

Happymapper allows you to parse XML data and convert it quickly and easily into
ruby data structures.

This project is a fork of the great work done first by
[jnunemaker](https://github.com/jnunemaker/happymapper).

[![Gem Version](https://badge.fury.io/rb/nokogiri-happymapper.svg)](https://badge.fury.io/rb/nokogiri-happymapper)
[![Build Status](https://travis-ci.org/mvz/happymapper.svg?branch=master)](https://travis-ci.org/mvz/happymapper)
[![Coverage Status](https://coveralls.io/repos/github/mvz/happymapper/badge.svg?branch=master)](https://coveralls.io/github/mvz/happymapper?branch=master)
[![Depfu](https://badges.depfu.com/badges/1707c8c2322e2ed267cf88bd4fb12b66/overview.svg)](https://depfu.com/github/mvz/happymapper)
[![Maintainability](https://api.codeclimate.com/v1/badges/491015f82bd2a45fd9d3/maintainability)](https://codeclimate.com/github/mvz/happymapper/maintainability)

## Major Differences

  * [Nokogiri](http://nokogiri.org/) support
  * Text nodes parsing
  * Raw XML content parsing
  * `#to_xml` support utilizing the same HappyMapper tags
  * Numerous fixes for namespaces when using composition of classes
  * Fixes for instances of XML where a namespace is defined but no elements
    with that namespace are found

## Installation

Install via rubygems:

    $ gem install nokogiri-happymapper

Or add the `nokogiri-happymapper` gem to your project's `Gemfile`.

    gem 'nokogiri-happymapper', require: 'happymapper'

You can now also require `nokogiri-happymapper` directly.

    gem 'nokogiri-happymapper'

Run Bundler to install the gem:

    $ bundle install

## Examples

Let's start with a simple example to get our feet wet. Here we have a simple
example of XML that defines some address information:

```xml
<address>
  <street>Milchstrasse</street>
  <housenumber>23</housenumber>
  <postcode>26131</postcode>
  <city>Oldenburg</city>
  <country code="de">Germany</country>
</address>
```

Happymapper provides support for simple, zero configuration parsing as well as
the ability to model the XML content in classes.

### HappyMapper.parse(XML)

With no classes or configuration you can parse the example XML with little
effort:

```ruby
address = HappyMapper.parse(ADDRESS_XML_DATA)
address.street # => Milchstrasse
address.housenumber # => 23
address.postcode # => 26131
address.city # => Oldenburg
address.country.code # => de
address.country.content # => Germany
```

It is important to be aware that this no configuration parsing is limited in capacity:

* All element names are converted to accessor methods with
  [underscorized](http://rubydoc.info/gems/activesupport/ActiveSupport/Inflector:underscore)
  names
* All value fields are left as String types
* Determining if there is just one or multiple child elements is hard, so it
  assumes it is one until it finds another with the same name.

### Address.parse(XML)

Happymapper will let you easily model this information as a class:

```ruby
require 'happymapper'

class Address
  include HappyMapper

  tag 'address'
  element :street, String, tag: 'street'
  element :postcode, String, tag: 'postcode'
  element :housenumber, Integer, tag: 'housenumber'
  element :city, String, tag: 'city'
  element :country, String, tag: 'country'
end
```

To make a class HappyMapper compatible you simply `include HappyMapper` within
the class definition. This takes care of all the work of defining all the
speciality methods and magic you need to get running. As you can see we
immediately start using these methods.

* `tag` matches the name of the XML tag name 'address'.

* `element` defines accessor methods for the specified symbol
  (e.g. `:street`,`:housenumber`) that will return the class type
  (e.g. `String`,`Integer`) of the XML tag specified
  (e.g. `tag: 'street'`, `tag: 'housenumber'`).

When you define an element with an accessor with the same name as the tag, this
is the case for all the examples above, you can omit the `:tag`. These two
element declaration are equivalent to each other:

```ruby
element :street, String, tag: 'street'
element :street, String
```

Including the additional tag element is not going to hurt anything and in some
cases will make it absolutely clear how these elements map to the XML. However,
once you know this rule, it is hard not to want to save yourself the
keystrokes.

Instead of `element` you may also use `has_one`:

```ruby
element :street, String, tag: 'street'
element :street, String
has_one :street, String
```

These three statements are equivalent to each other.

### Parsing

With the mapping of the address XML articulated in our Address class it is time
to parse the data:

```ruby
address = Address.parse(ADDRESS_XML_DATA, single: true)
puts address.street
```

Assuming that the constant `ADDRESS_XML_DATA` contains a string representation
of the address XML data this is fairly straight-forward save for the `parse`
method.

The `parse` method, like `tag` and `element` are all added when you included
HappyMapper in the class. Parse is a wonderful, magical place that converts all
these declarations that you have made into the data structure you are about to
know and love.

But what about the `single: true`? Right, that is because by default when
your object is all done parsing it will be an array. In this case an array with
one element, but an array none the less. So the following are equivalent to
each other:

```ruby
address = Address.parse(ADDRESS_XML_DATA).first
address = Address.parse(ADDRESS_XML_DATA, single: true)
```

The first one returns an array and we return the first instance, the second
will do that work for us inside of parse.

### Multiple Elements Mapping

What if our address XML was a little different, perhaps we allowed multiple
streets:

```xml
<address>
  <street>Milchstrasse</street>
  <street>Another Street</street>
  <housenumber>23</housenumber>
  <postcode>26131</postcode>
  <city>Oldenburg</city>
  <country code="de">Germany</country>
</address>
```

Similar to `element` or `has_one`, the declaration for when you have multiple
elements you simply use:

```ruby
has_many :streets, String, tag: 'street'
```

Your resulting `streets` method will now return an array.

```ruby
address = Address.parse(ADDRESS_XML_DATA, single: true)
puts address.streets.join('\n')
```

Imagine that you have to write `streets.join('\n')` for the rest of eternity
throughout your code. It would be a nightmare and one that you could avoid by
creating your own convenience method.

```ruby
require 'happymapper'

class Address
  include HappyMapper

  tag 'address'

  has_many :streets, String

  def streets
    @streets.join('\n')
  end

  element :postcode, String, tag: 'postcode'
  element :housenumber, String, tag: 'housenumber'
  element :city, String, tag: 'city'
  element :country, String, tag: 'country'
end
```

Now when we call the method `streets` we get a single value, but we still have
the instance variable `@streets` if we ever need to the values as an array.


### Attribute Mapping

```xml
<address location='home'>
  <street>Milchstrasse</street>
  <street>Another Street</street>
  <housenumber>23</housenumber>
  <postcode>26131</postcode>
  <city>Oldenburg</city>
  <country code="de">Germany</country>
</address>
```

Attributes are absolutely the same as `element` or `has_many`

```ruby
attribute :location, String, tag: 'location
```

Again, you can omit the tag if the attribute accessor symbol matches the name
of the attribute.

#### Attributes On Empty Child Elements

```xml
<feed xml:lang="en-US" xmlns="http://www.w3.org/2005/Atom">
  <id>tag:all-the-episodes.heroku.com,2005:/tv_shows</id>
  <link rel="alternate" type="text/html" href="http://all-the-episodes.heroku.com"/>
  <link rel="self" type="application/atom+xml"
        href="http://all-the-episodes.heroku.com/tv_shows.atom"/>
  <title>TV Shows</title>
  <updated>2011-07-10T06:52:27Z</updated>
</feed>
```

In this case you would need to map an element to a new `Link` class just to
access `<link>`s attributes, except that there is an alternate syntax. Instead
of

```ruby
class Feed
  # ....
  has_many :links, Link, tag: 'link', xpath: '.'
end

class Link
  include HappyMapper

  attribute :rel, String
  attribute :type, String
  attribute :href, String
end
```

You can drop the `Link` class and simply replace the `has_many` on `Feed` with

```ruby
element :link, String, single: false, attributes: { rel: String, type: String, href: String }
```

As there is no content, the type given for `:link` (`String` above) is
irrelevant, but `nil` won't work and other types may try to perform typecasting
and fail. You can omit the single: false for elements that only occur once
within their parent.

This syntax is most appropriate for elements that (a) have attributes but no
content and (b) only occur at only one level of the heirarchy. If `<feed>`
contained another element that also contained a `<link>` (as atom feeds
generally do) it would be DRY-er to use the first syntax, i.e. with a separate
`Link` class.


### Class composition (and Text Node)

Our address has a country and that country element has a code. Up until this
point we neglected it as we declared a `country` as being a `String`.

    <address location='home'>
      <street>Milchstrasse</street>
      <street>Another Street</street>
      <housenumber>23</housenumber>
      <postcode>26131</postcode>
      <city>Oldenburg</city>
      <country code="de">Germany</country>
    </address>

Well if we only going to parse country, on it's own, we would likely create a
class mapping for it.

```ruby
class Country
  include HappyMapper

  tag 'country'

  attribute :code, String
  content :name, String
end
```

We are utilizing an `attribute` declaration and a new declaration called `content`.

* `content` is used when you want the text contained within the element

Awesome, now if we were to redeclare our `Address` class we would use our new
`Country` class.

```ruby
class Address
  include HappyMapper

  tag 'address'

  has_many :streets, String, tag: 'street'

  def streets
    @streets.join('\n')
  end

  element :postcode, String, tag: 'postcode'
  element :housenumber, String, tag: 'housenumber'
  element :city, String, tag: 'city'
  element :country, Country, tag: 'country'
end
```

Instead of `String`, `Boolean`, or `Integer` we say that it is a `Country` and
HappyMapper takes care of the details of continuing the XML mapping through the
country element.

```ruby
address = Address.parse(ADDRESS_XML_DATA, single: true)
puts address.country.code
```

A quick note, in the above example we used the constant `Country`. We could
have used `'Country'`. The nice part of using the latter declaration, enclosed
in quotes, is that you do not have to define your class before this class. So
Country and Address can live in separate files and as long as both constants
are available when it comes time to parse you are golden.

### Custom XPATH

#### Has One, Has Many

Getting to elements deep down within your XML can be a little more work if you
did not have xpath support. Consider the following example:

```xml
<media>
  <gallery>
    <title href="htttp://fishlovers.org/friends">Friends Who Like Fish</title>
    <picture>
      <name>Burtie Sanchez</name>
      <img>burtie01.png</img>
    </picture>
  </gallery>
  <picture>
    <name>Unsorted Photo</name>
    <img>bestfriends.png</img>
  </picture>
</media>
```

You may want to map the sub-elements contained buried in the 'gallery' as top
level items in the media. Traditionally you could use class composition to
accomplish this task, however, using the xpath attribute you have the ability
to shortcut some of that work.

```ruby
class Media
  include HappyMapper

  has_one :title, String, xpath: 'gallery/title'
  has_one :link, String, xpath: 'gallery/title/@href'
end
```

### Shared Functionality

#### Inheritance Approach

While mapping XML to objects you may arrive at a point where you have two or
more very similar structures.

```ruby
class Article
  include HappyMapper

  has_one :title, String
  has_one :author, String
  has_one :published, Time

  has_one :entry, String

end

class Gallery
  include HappyMapper

  has_one :title, String
  has_one :author, String
  has_one :published, Time

  has_many :photos, String

end
```

In this example there are definitely two similarities between our two pieces of
content. So much so that you might be included to create an inheritance
structure to save yourself some keystrokes.

```ruby
class Content
  include HappyMapper

  has_one :title, String
  has_one :author, String
  has_one :published, Time
end

class Article < Content
  include HappyMapper

  has_one :entry, String
end

class Gallery < Content
  include HappyMapper

  has_many :photos, String
end
```

#### Module Mixins Approach

You can also solve the above problem through mixins.

```ruby
module Content
  def self.included(content)
    content.has_one :title, String
    content.has_one :author, String
    content.has_one :published, Time
  end

  def published_time
    @published.strftime("%H:%M:%S")
  end
end

class Article
  include HappyMapper

  include Content
  has_one :entry, String
end

class Gallery
  include HappyMapper

  include Content
  has_many :photos, String
end
```

Here, when we include `Content` in both of these classes the module method
`#included` is called and our class is given as a parameter. So we take that
opportunity to do some surgery and define our happymapper elements as well as
any other methods that may rely on those instance variables that come along in
the package.

### Filtering with XPATH (non-greedy)

I ran into a case where I wanted to capture all the pictures that were directly
under media, but not the ones contained within a gallery.

```xml
<media>
  <gallery>
    <picture>
      <name>Burtie Sanchez</name>
      <img>burtie01.png</img>
    </picture>
  </gallery>
  <picture>
    <name>Unsorted Photo</name>
    <img>bestfriends.png</img>
  </picture>
</media>
```

The following `Media` class is where I started:

```ruby
require 'happymapper'

class Media
  include HappyMapper

  has_many :galleries, Gallery, tag: 'gallery'
  has_many :pictures, Picture, tag: 'picture'
end
```

However when I parsed the media xml the number of pictures returned to me was 2, not 1.

```ruby
pictures = Media.parse(MEDIA_XML,single: true).pictures
pictures.length.should == 1   # => Failed Expectation
```

The reason that 2 elements are returned and not 1 is because the default
mappings are assigned XPATH './/' which makes them greedy. Essentially by
default it will find all elements with the tag 'pictures' at the current
level of the document and anywhere else within the document.

To limit an element from being greedy and only finding elements at the
level of the current node you can specify an XPATH.

```ruby
has_many :pictures, Picture, tag: 'picture', xpath: '.'
```

`.` states that we are only interested in pictures that can be found directly
under the current node. So when we parse again we will have only our one element.

### Namespaces

Obviously your XML and these trivial examples are easy to map and parse because
they lack the treacherous namespaces that befall most XML files.

Perhaps our `address` XML is really swarming with namespaces:

    <prefix:address location='home' xmlns:prefix="http://www.unicornland.com/prefix">
      <prefix:street>Milchstrasse</prefix:street>
      <prefix:street>Another Street</prefix:street>
      <prefix:housenumber>23</prefix:housenumber>
      <prefix:postcode>26131</prefix:postcode>
      <prefix:city>Oldenburg</prefix:city>
      <prefix:country code="de">Germany</prefix:country>
    </prefix:address>

Here again is our address example with a made up namespace called `prefix` that
comes direct to use from unicornland, a very magical place indeed. Well we are
going to have to do some work on our class definition and that simply adding
this one liner to the `Address` class:

```ruby
class Address
  include HappyMapper

  tag 'address'
  namespace 'prefix'
  # ... rest of the code ...
end
```

Of course, if that is too easy for you, you can append a `namespace: 'prefix`
to every one of the elements that you defined.

```ruby
has_many :street, String, tag: 'street', namespace: 'prefix'
element :postcode, String, tag: 'postcode', namespace: 'prefix'
element :housenumber, String, tag: 'housenumber', namespace: 'prefix'
element :city, String, tag: 'city', namespace: 'prefix'
element :country, Country, tag: 'country', namespace: 'prefix'
```

I definitely recommend the former, as it saves you a whole hell of lot of
typing. However, there are times when appending a namespace to an element
declaration is important and that is when it has a different namespace than
`namespace 'prefix'`.

Imagine that our `country` actually belonged to a completely different namespace.

```xml
<prefix:address location='home'
                xmlns:prefix="http://www.unicornland.com/prefix"
                xmlns:different="http://www.trollcountry.com/different">
  <prefix:street>Milchstrasse</prefix:street>
  <prefix:street>Another Street</prefix:street>
  <prefix:housenumber>23</prefix:housenumber>
  <prefix:postcode>26131</prefix:postcode>
  <prefix:city>Oldenburg</prefix:city>
  <different:country code="de">Germany</different:country>
</prefix:address>
```

Well we would need to specify that namespace:

```ruby
element :country, Country, tag: 'country', namespace: 'different'
```

With that we should be able to parse as we once did.

### Large Datasets (`:in_groups_of`)

When dealing with large sets of XML that simply cannot or should not be placed
into memory the objects can be handled in groups through the `:in_groups_of`
parameter.

```ruby
Address.parse(LARGE_ADDRESS_XML_DATA,in_groups_of: 5) do |group|
  puts address.streets
end
```

This trivial block will parse the large set of XML data and in groups of 5
addresses at a time display the streets.

### Saving to XML

Saving a class to XML is as easy as calling `#to_xml`.  The end result will be
the current state of your object represented as xml. Let's cover some details
that are sometimes necessary and features present to make your life easier.


#### :on_save

When you are saving data to xml it is often important to change or manipulate
data to a particular format. For example, a time object:

```ruby
has_one :published_time, Time, on_save: lambda {|time| time.strftime("%H:%M:%S") if time }
```

Here we add the options `:on_save` and specify a lambda which will be executed
on the method call to `:published_time`.

#### :state_when_nil

When an element contains a nil value, or perhaps the result of the :on_save
lambda correctly results in a nil value you will be happy that the element will
not appear in the resulting XML. However, there are time when you will want to
see that element and that's when `:state_when_nil` is there for you.

```ruby
has_one :favorite_color, String, state_when_nil: true
```

The resulting XML will include the 'favorite_color' element even if the
favorite color has not been specified.

#### :read_only

When an element, attribute, or text node is a value that you have no interest in
saving to XML, you can ensure that takes place by stating that it is `read only`.

```ruby
has_one :modified, Boolean, read_only: true
attribute :temporary, Boolean, read_only: true
```

This is useful if perhaps the incoming XML is different than the out-going XML.

#### namespaces

Parsing the XML to objects only required you to simply specify the prefix of
the namespace you wanted to parse, when you persist to xml you will need to
define your namespaces so that they are correctly captured.

```ruby
class Address
  include HappyMapper

  register_namespace 'prefix', 'http://www.unicornland.com/prefix'
  register_namespace 'different', 'http://www.trollcountry.com/different'

  tag 'address'
  namespace 'prefix'

  has_many :street, String
  element :postcode, String
  element :housenumber, String
  element :city, String
  element :country, Country, tag: 'country', namespace: 'different'

end
```
