# acts_as_api ![acts_as_api on travis ci](https://secure.travis-ci.org/fabrik42/acts_as_api.png?branch=master)

acts_as_api makes creating XML/JSON responses in Rails 3, 4 and 5 easy and fun.

It provides a simple interface to determine the representation of your model data, that should be rendered in your API responses.

In addition to Rails it theoretically can be used with any ruby app and any database (__ActiveRecord__, __Mongoid__ and __ActiveResource__ are supported out of the box) as it only has few dependencies.

The lib is _very_ fast in generating your responses and battle tested in production with platforms like [Diaspora](https://joindiaspora.com) or [flinc](https://flinc.org).

## Introduction

acts_as_api enriches the models and controllers of your app in a Rails-like way so you can easily determine how your API responses should look like:

```ruby
class User < ActiveRecord::Base

  acts_as_api

  api_accessible :public do |template|
    template.add :first_name
    template.add :age
  end
  # will render json: { "user": { "first_name": "John", "age":  26 } }

  api_accessible :private, extend: :public do |template|
    template.add :last_name
    template.add :email
  end
  # will render json: { "user": { "first_name": "John", "last_name": "Doe", "age":  26, "email": "john@example.org" } }

end
```

## Getting started

A nice introduction about acts_as_api with examples can be found here:

http://fabrik42.github.com/acts_as_api

See the Wiki for a lot of usage examples and features:

https://github.com/fabrik42/acts_as_api/wiki

There are a lot of how-tos like:

* [Extending existing api templates](https://github.com/fabrik42/acts_as_api/wiki/Extending-an-existing-api-template)
* [Include attributes and all other kinds of methods of your model](https://github.com/fabrik42/acts_as_api/wiki/Calling-a-method-of-the-model)
* [Include child associations (if they also act_as_api this will be considered)](https://github.com/fabrik42/acts_as_api/wiki/Including-a-child-association)
* [Rename attributes, methods, associations](https://github.com/fabrik42/acts_as_api/wiki/Renaming-an-attribute)
* [Keep your API templates out of your models](https://github.com/fabrik42/acts_as_api/wiki/Keep-your-api-templates-out-of-your-models)
* [and much more...](https://github.com/fabrik42/acts_as_api/wiki)

## Features:

* DRY templates for your api responses
* Ships with support for __ActiveRecord__ and __Mongoid__
* Support for Rails 3/4 Responders (extracted to responders gem since Rails 5)
* Plays very well together with client libs like [Backbone.js](http://documentcloud.github.com/backbone), [RestKit](http://restkit.org) (iOS) or [gson](http://code.google.com/p/google-gson) (Android).
* Easy but very flexible syntax for defining the templates
* XML, JSON and JSON-P support out of the  box, easy to extend
* Minimal dependecies (you can also use it without Rails)
* Supports multiple api rendering templates per model. This is especially useful for API versioning or for example for private vs. public access points to a user’s profile.

### Requirements:

* ActiveModel (>= 3.0.0)
* ActiveSupport (>= 3.0.0)
* Rack (>= 1.1.0)

### Links

* Introduction: http://fabrik42.github.com/acts_as_api

* Docs: http://rdoc.info/projects/fabrik42/acts_as_api

* Found a bug? http://github.com/fabrik42/acts_as_api/issues

* Wiki: https://github.com/fabrik42/acts_as_api/wiki

* Want to contribute - the spec suite is explained here: https://github.com/fabrik42/acts_as_api/tree/master/spec

### Downwards Compatibility

Note that upgrading to 0.3.0 will break code that worked with previous versions due to a complete overhaul of the lib.
For a legacy version of this readme file look here: https://github.com/fabrik42/acts_as_api/wiki/legacy-acts_as_api-0.2-readme
