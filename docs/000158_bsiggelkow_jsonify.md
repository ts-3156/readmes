# Jsonify &mdash; a builder for JSON [![Build Status](https://secure.travis-ci.org/bsiggelkow/jsonify.png)](http://travis-ci.org/bsiggelkow/jsonify)

[Jsonify](https://github.com/bsiggelkow/jsonify) is to JSON as [Builder](https://github.com/jimweirich/builder) is to XML. 

To use Jsonify for Rails templates, install [Jsonify-Rails](https://github.com/bsiggelkow/jsonify-rails).

## Goal

Jsonify provides a ___builder___ style engine for creating correct JSON representations of Ruby objects entirely based on the [JSON specification](http://json.org).

## Motivation

JSON and XML are the most common data representation formats used by RESTful applications. Jsonify is built on the belief that these representations belong in the ___view___ layer of the application.

Jsonify also seeks to  emulate the simplicity of [Builder](https://github.com/jimweirich/builder). I have not found a single builder engine for JSON that provides a Builder-like experience. Jsonify is my attempt to remedy that situation.

### Rails

Rails made XML generation easy with support for Builder templates, but, for JSON, there was no clear approach. (Note: Rails has since extracted [jbuilder](https://github.com/rails/jbuilder).)

For many applications, particularly those based on legacy a database, it is common to expose the data in a more client-friendly format than what is generated by the default Rails `to_json` method. 

### See Also

There are a number of [related libraries](#related) available that try to solve this problem. Some of which take a similar approach to Jsonify and provide a builder-style interface. Others allow the developer to specify the representation using a common DSL that can generate both JSON and XML. Please take a look at these projects and consider your alternatives. It's my opinion that there are substantial and inherent differences between XML and JSON; and that these differences may force the developer to make concessions in one interface or the other.


## Installation

`gem install jsonify`

## Usage

_Note: JSON output is usually shown "prettified" in examples. This is only for illustration purposes, as the Jsonify default is `plain` compact string without newlines. Enable pretty output by passing `:format => :pretty` to the Jsonify::Builder constructor. Keep in mind that pretty printing is a relatively costly operation so use it only when neccessary._

### Compatibility Warning

#### Arrays

Array handling was changed in 0.2.0 to provide a more natural feel. Code written using earlier versions of Jsonify may not work correctly. Previously you had to switch to a more conventional Ruby style for arrays:

```ruby
json.links(@links) do |link|
  {:rel => link.type, :href => link.url}
end
```

This syntax was a frequent stumbling block with users. The interface for handling arrays is now consistent with the builder-style and should be less surprising:

```ruby
json.links(@links) do |link|
  json.rel link.type
  json.href link.url
end
```

_As always, all feedback is greatly appreciated. I want to know how this new style works out._

### Quick Example

Using Jsonify to create some objects to represent a person and associated hyperlinks:

```ruby
@person = Struct.new(:first_name,:last_name).new('George','Burdell')

Link = Struct.new(:type, :url)

@links = [
  Link.new('self', 'http://example.com/people/123'),
  Link.new('school', 'http://gatech.edu')
]

# Build this information as JSON
require 'jsonify'
json = Jsonify::Builder.new(:format => :pretty)

# Representation of the person
json.alumnus do
  json.fname @person.first_name
  json.lname @person.last_name
end

# Relevant links
json.links(@links) do |link|
  json.rel link.type
  json.href link.url
end

# Evaluate the result to a string
json.compile!
```

Gives you this JSON:

```json
{
    "alumnus": {
        "fname": "George",
        "lname": "Burdell"
    },
    "links": [
    {
         "rel": "self",
         "href": "http://example.com/people/123"
    },
    {
        "rel": "school",
        "href": "http://gatech.edu"
    }]
}
```

#### Convenience methods

Jsonify provides class-level convenience methods that
save you the trouble of instantiating the `Jsonify::Builder`. Each of these methods accepts a block, yields a new `Builder` object to the block, and then compiles the result.

- `compile`
  - Compiles the given block; any options are passed to the instantiated `Builder`.
- `pretty`
  - Compiles the given block; results are output in `pretty` format. 
- `plain`
  - Compiles the given block; results are output in `plain` (default) format. 

```ruby
Jsonify::Builder.plain do |j|
  j.song 'Fearless'
  j.album 'Meddle'
end
```

### Rails View Templates

Jsonify can be used for Rails 3 view templates via the [jsonify-rails](https://github.com/bsiggelkow/jsonify-rails) which includes a Rails 3 template handler. Any template with a `.jsonify` extension will be handled by Rails.

The Jsonify template handler exposes the `Jsonify::Builder` instance to your template with the `json` variable:

```ruby
json.hello do
  json.world "Jsonify is Working!"
end
```

Your Jsonify template will have access to any instance variables that are exposed through the controller. See [Jsonify-Rails](https://github.com/bsiggelkow/jsonify-rails) for additional details.

#### Partials

Jsonify views can use other Jsonify partials. How the template uses a partial depends on the returned string. _Remember that partials always return strings as their results._

##### Jsonify partials

Jsonify partials are files that have a `.jsonify` extension. Partials __must__ return a valid JSON string. The string should represent a JSON object (wrapped in curly braces `{}`) or a JSON array (wrapped in square brackets `[]`).

Use the `ingest!` method to use a partial in your template:

```ruby
json.ingest! (render :partial => 'my_partial')
```

`ingest!` parses the JSON into a Jsonify object graph, and then adds it to the builder.

In your main template:

```ruby
# index.jsonify

json << 1
json.ingest! (render :partial => 'my_partial')
```

The first line creates an array using the append `<<` operator. The second line shows how the partial is used. You cannot simply place `render :partial ...` on a line by itself as you can do with other templates like `erb` and `haml`. You have to explicitly tell Jsonify to add it to the builder.

Here's a partial:

```ruby
# _my_partial.jsonify

json << 3
json << 4
```

This `json` variable in this partial is a separate distinct `Jsonify::Builder` instance from the `json` variable in the main template.

> Wishlist: Figure out if a the `json` instance can be passed to the Jsonify
> partial to make things easier.

The partial returns:

```json
"[3,4]"
```

Now, combining our index and partial we get:

```json
"[1,[3,4]]"
```

##### Other partials

You can also use output from non-Jsonify templates (e.g. erb); just remember that the output from a template is always a string and that you have to tell the builder how to include the result of the partial.

Given an ERB partial:

```erb
<!-- _today.erb --> 
<%= Date.today %>
```

and you use it in a Jsonify template:

```ruby
json << 1
json << { :date => (render :partial => 'today') }
```

You get:
  
```json
[1,{"date":"2011-07-30"}]
```

### Tilt Integration

Jsonify includes support for [Tilt](http://github.com/rtomayko/tilt). This allow you to create views that use Jsonify with any framework that supports Tilt. Here's an example of a simple [Sinatra](http://sinatrarb.com) application that leverages Jsonify's Tilt integration:

```ruby
require 'bundler/setup'
require 'sinatra'

require 'jsonify'
require 'jsonify/tilt'

helpers do
  def jsonify(*args) 
    render(:jsonify, *args) 
  end
end

get '/' do
  jsonify :index
end
```

And the corresponding template in `views\index.jsonify`

```json
json.hello :frank
```

### Usage Patterns

#### Background

As mentioned before, Jsonify is designed to support construction of valid JSON and is entirely based on the [JSON specification](http://json.org).

JSON is built on two fundamental structures:

  * __object__: a collection of name-value pairs -- in Jsonify this is a `JsonObject`
  * __array__: an ordered list of values -- in Jsonify this is a `JsonArray`
  
Jsonify adheres to the JSON specification and provides explicit support 
for working with these primary structures. A JSON string
must be one of these structures and Jsonify ensures that this condition is met.

#### Creating JSON Objects

A JSON object, sometimes referred to as an ___object literal___, is a common structure familiar to most developers. It's analogous to the nested element structure common in XML. The [JSON RFC](http://www.ietf.org/rfc/rfc4627.txt) states that "the names within an object SHOULD be unique". Jsonify enforces this recommendation by backing the JsonObject with a `Hash`; an object that must have unique keys and the last one in, wins.

```ruby
json = Jsonify::Builder.new
json.person do # start a new JsonObject where the key is 'foo'
  json.name 'George Burdell' # add a pair to this object
  json.skills ['engineering','bombing'] # adds a pair with an array value
  json.name 'George P. Burdell'
end
```

```json
{
    "person": {
        "name": "George P. Burdell",
        "skills": [
            "engineering",
            "bombing"
        ]
    }
}
```

It's perfectly legitimate for a JSON representation to simply be a collection
of name-value pairs without a ___root___ element. Jsonify supports this by allowing you to specify the pairs that make up the object.

```ruby
json = Jsonify::Builder.new
json.location 'Library Coffeehouse'
json.neighborhood 'Brookhaven'
```

```json
{
    "location": "Library Coffeehouse",
    "neighborhood": "Brookhaven"
}
```

If the ___name___ you want contains whitespace or other characters not allowed in a Ruby method name, use `tag!`.

```ruby
json.tag!("my location", 'Library Coffeehouse')
json.neighborhood 'Brookhaven'
```

```json
{
    "my location": "Library Coffeehouse",
    "neighborhood": "Brookhaven"
}
```

Jsonify also supports a hash-style interface for creating objects:

```ruby
json = Jsonify::Builder.new
    
json[:foo] = :bar
json[:go]  = :far
```

```json
{
    "foo": "bar",
    "go": "far"
}
```

Use the hash-style within a block as well:

```ruby
json.homer do
  json[:beer] = "Duffs"
  json[:spouse] = "Marge"
end
```

```json
{
    "homer": {
        "beer": "Duffs",
        "spouse": "Marge"
    }
}
```

Use `store!` for a more method-based style:

```ruby
json.store!(:foo, :bar)
json.store!(:go, :far)
```

#### Creating JSON Arrays

A JSON array is an ordered list of JSON values. A JSON value can be a simple value, like a string or a number, or a supported JavaScript primitive like true, false, or null. A JSON value can also be a JSON object or another JSON array. Jsonify strives to make this kind of construction possible in a buider-style.

Jsonify supports JSON array construction through two approaches: `method_missing` and `append!`.

##### Use method_missing

Pass an array and a block to `method_missing` (or `tag!`), and Jsonify will create a JSON array. It will then iterate over the array and call the block for each item in the array. Use the `json` object within the block to add items to the JSON array.

That JSON array is then set as the value of the name-value pair, where the name comes from the method name (for `method_missing`)
or symbol (for `tag!`).

This construct creates a JSON pair and a JSON array as the value of the pair.

```ruby
Jsonify::Builder.pretty do |json|
  json.letters('a'..'c') do |letter|
    json << letter.upcase
  end
end
```

```json
{
    "letters": [
        "A",
        "B",
        "C"
    ]
}
```

Another way to handle this particular example is to get rid of the block entirely. 
Simply pass the array directly:

```ruby
json.letters ('a'..'c').map(&:upcase)
```

##### Use append!

Use this method and the builder will assume you are adding values to a JSON array without the surrounding object.

* Use `append!` for multiple values
* Use `<<` for a single value

Multiple values:

```ruby
json = Jsonify::Builder.new
json.append! 'a'.upcase, 'b'.upcase, 'c'.upcase
```

```json
[
    "A",
    "B",
    "C"
]
```
or more idiomatically:

```ruby
json.append! *('a'..'c').map(&:upcase)
```

Single values:

```ruby
json << 'a'.upcase
json << 'b'.upcase
json << 'c'.upcase
```

Standard iteration works here:

```ruby
json = Jsonify::Builder.new
('a'..'c').each do |letter|
  json << letter.upcase
end
```

#### Mixing JSON Arrays and Objects

You can readily mix JSON arrays and objects and the Jsonify builder will do
its best to keep things straight.

Start with an array and add an object:

```ruby
json = Jsonify::Builder.new
json.append! 1,2,3
json.say "go, cat go"
```

```json
[1,2,3,{"say":"go, cat go"}]
```

The builder sees the name-value pair being added to an array and converts it to a JSON object.

Now, start with an object and add an array:

```ruby
json.foo 'bar'
json.go  'far'
json  << 'baz'
```

```json
{"foo":"bar","go":"far","baz":null}
```

The builder now sees the single item (`baz`) and turns it into a name-value pair with a `null` value.

## Documentation

[Yard Docs](http://rubydoc.info/github/bsiggelkow/jsonify/master/frames)

<a name='related'/>

## Related Projects

- [Argonaut](https://github.com/jbr/argonaut)
- [jbuilder](https://github.com/rails/jbuilder)
- [JSON Builder](https://github.com/dewski/json_builder)
- [RABL](https://github.com/nesquena/rabl)
- [Representative](https://github.com/mdub/representative)
- [Tokamak](https://github.com/abril/tokamak)

## License

This project is released under the MIT license.

## Authors

* [Bill Siggelkow](https://github.com/bsiggelkow)