# RailsStuff
[![Gem Version](https://badge.fury.io/rb/rails_stuff.svg)](http://badge.fury.io/rb/rails_stuff)
[![Code Climate](https://codeclimate.com/github/printercu/rails_stuff/badges/gpa.svg)](https://codeclimate.com/github/printercu/rails_stuff)
[![Build Status](https://travis-ci.org/printercu/rails_stuff.svg)](https://travis-ci.org/printercu/rails_stuff)

Collection of useful modules for ruby projects to provide great DRY, TDD experience.
While some of them are Rails-specific, most will work in any environment
despite gem's name.

All modules are lazy loaded, so it's ok to require whole gem at once.
Some of them are activated by default for best experience,
but this can be configured or turned off (see [usage](#usage)).

Works with ruby 2.0+, Rails 4.2+, 5+.

#### Controllers:

- __[ResourcesController](#resourcescontroller)__
  DRY! Keep your controllers clean.
- __[SortScope](#sortscope)__
  Helper for `has_scope` to sort collections safely.

#### Models:

- __[NullifyBlankAttrs](#nullifyblankattrs)__
  Proxies writers to replace empty values with `nil`.
- __[AssociationWriter](#associationwriter)__
  Override both writers with single instruction.
- __[RandomUniqAttr](#randomuniqattr)__
  You generate random values for attributes, it'll ensure they are uniq.
- __[Statusable](#statusable)__
  `ActiveRecord::Enum` with more features.
- __[TypesTracker](#typestracker)__
  Advanced descendants tracker.

#### Misc:

- __[ParamsParser](#paramsparser)__
  Type-cast params outside of `ActiveRecord`.
- __[RedisStorage](#redisstorage)__
  Simple way to store collections in key-value storage. With scoping and
  key generation.
- __[StrongParameters](#strongparameters)__
  `require_permitted` helper.
- __UrlFor__
  `#url_for_keeping_params` merges passed options with request's query params.
- __[RequireNested](#requirenested)__
  helper to load files in subdirectory.
- `rails g concern %parent%/%module%` generator for concerns.

#### Helpers:

- __TranslationHelper__
  `translate_action`, `translate_confirmation` helpers to translate
  action names and confirmations in the same way all over you app.
- __LinksHelper__
  Keep your links for basic actions consistent.
- __Bootstrap__
  For bootstrap-formatted flash messages.
- __Forms__
  `hidden_params_fields` to bypass query params in GET-forms.

__[Helpers usage](#helpers-usage)__

#### Test helpers:

- __Response__
  `#json_body` to test json responses.
- Useful RSpec configurations, helpers and matchers for better experience.
- __Concurrency__
  Helpers for testing with concurrent requests.

__[Test helpers usage](#test-helpers-usage)__

#### Assets:

- __MediaQueries__
  `@media #{$sm-up} and #{$portrait} { ... }` queries for SASS.
- __[PluginManager](#pluginmanager)__
  Simple way to create jQuery plugins using classes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_stuff'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_stuff

## Usage

There is railtie which will include some of modules into `ActiveRecord::Base`
and `ActionController::Base` by default. You can disable this behavior in
initializer:

```ruby
# Disable auto-setup:
RailsStuff.load_modules = []

# Enable particular modules:
RailsStuff.load_modules = %i(sort_scope statusable)
```

You can override base classes for controller/model with `.base_controller=`,
`.base_model=`.

There can be lack of documentation in README. Please navigate to module and
check docs & code (press `t` on github) if you miss something.

### ResourcesController

Similar to [InheritedResource](https://github.com/josevalim/inherited_resources)
but much simpler. It adds implementations for basic actions and
accessors for collection and resource. There is no options for almost everything,
but it's easy to extend.

It's main purpose is to ged rid of `@user ||= User.find params[:id]`, and keep
controllers clean:

```ruby
class ApplicationController < ActionController::Base
  extend RailsStuff::ResourcesController # when using without railtie
end

class UsersController < ApplicationController
  resources_controller
  permit_attrs :name, :email
end

class ProjectsController < ApplicationController
  resources_controller sti: true,
    after_save_action: :index,
    source_relation: -> { user.projects }
  resource_helper :user

  # or just
  resources_controller sti: true,
    after_save_action: :index,
    belongs_to: :user
    # `belongs_to: [:user, optional: true]` for shallow routes

  permit_attrs :name
  permit_attrs_for Project::External, :company
  permit_attrs_for Project::Internal, :department
end
```

There is built-in support for `has_scope` gem and pagination with Kaminari.

Currently depends on `gem 'responders', '> 2.0'`.

### SortScope

```ruby
# in controller
extend RailsStuff::SortScope # when using without railtie

has_sort_scope by: [:name, :created_at, :balance], default: [:name]

# this scope will accept
#   - `sort=name`
#   - `sort=name&sort_desc=true`
#   - `sort[name]&sort[created_at]`
#   - `sort[name]&sort[created_at]=desc

# access current sort scope hash with
current_sort_scope # => {'name' => :desc} or {'name' => :asc, 'id' => :desc}
```

Requires `gem 'has_scope'`.

### NullifyBlankAttrs

Defines proxies for writers to replace empty values with `nil`.

```ruby
# in model
extend RailsStuff::NullifyBlankAttrs # when using without railtie

nullify_blank_attrs :email, :title
```

### AssociationWriter

ActiveRecord's association can be updated with object and by object id.
Owerwrite this both writers with single instruction:

```ruby
association_writer :product do |val|
  super(val).tap { update_price if product }
end
```

### RandomUniqAttr

Uses database's UNIQUE constraints and transactions to generate uniq random values.
You need to make field nullable and add unique index on it.
The way it works:

- Instance is saved as usual
- If random fields are not empty, it does nothing
- Generates random value and tries to update instance
- If `RecordNotUnique` is occurred, it keeps trying to generate new values.

```ruby
# in model
extend RailsStuff::RandomUniqAttr # when using without railtie

# Uses DEFAULT_GENERATOR which is SecureRandom(32)
random_uniq_attr :token

# Uses custom generator, which takes template from settings
random_uniq_attr(:code) do |instance|
  MyGenerator.generate(instance.parent.code_template)
end
```

### Statusable

```ruby
class User < ActiveRecord::Base
  extend RailsStuff::Statusable # when using without railtie

  # Setup with array and it'll store status values as strings.
  STATUSES = %i(confirmed banned)
  has_status_field # uses #status field and STATUSES as values

  # Or pass everything explicitly
  has_status_field :subscription_status, %i(expired active), prefix: :subs_
  # :prefix is used for methods that are build
end

class Order < ActiveRecord::Base
  # Provide hash, and it'll store mapped values in database.
  STATUSES_MAPPING = {submitted: 1, confirmed: 2, delivered: 3}
  has_status_field
end

user = User.first

# And you get:
# Scopes
User.confirmed.subs_active
User.not_banned.not_subs_expired
# Useful with has_scope
User.with_status(param[:status]).with_subscription_status(params[:subs_status])
# When using mapped values, scopes will accept status names:
Order.with_status(:confirmed)

# Translation & select helpers (requires activemodel_translation gem)
User.statuses.translate(:active)
user.subscription_status_name # translates current status
User.statuses.select_options
User.subscription_statuses.select_options except: [:expired]
Order.statuses.map([:submitted, :delivered]) # => [1, 3]
Order.statuses.unmap([1, 3]) # => [:submitted, :delivered]

# Accessors
user.status = 'confirmed' or user.confirmed!
user.status_sym # :confirmed
user.subscription_status = :active or user.subs_active!
user.subscription_status # 'active'
user.banned? or user.subs_expired?

# ... and inclusion validator
```

### TypesTracker

```ruby
class Project
  extend RailsStuff::TypesTracker
  # you can also override default list class (Array) with:
  self.types_list_class = FilterableArray
  # smth ...

  # If you want to show all available descendants in development
  # (ex. in dropdown/select), you definitely want this:
  require_nested # will load all .rb files in app/models/project
end

class Project::Big < Project
  unregister_type # remove this class from types_list

  # Or add options for custom list.
  # Following will call types_list.add Project::Big, :arg, option: :example
  register_type :arg, option: :example
end

class Project::Internal < Project::Big; end
class Project::External < Project::Big; end
class Project::Small < Project; end

Project.types_list # [Internal, External, Small]

# Scopes for each type:
Project.internal or Project.big
```

### ParamsParser

Have you missed type-casting outside of `ActiveRecord::Base`? Here is it:

```ruby
ParamsParser.parse_int(params[:field]) # _float, _decimal, _string, _boolean, _datetime
ParamsParser.parse_int_array(params[:field_with_array])
ParamsParser.parse_json(json_string)

# There is basic .parse method. It runs block only if input is not nil
# and reraises all errors with ParamsParser::Error
ParamsParser.parse(input) { |x| this_can_raise_exception(x) }

# So you can handle all errors in controller with
rescue_from ParamsParser::Error, with: -> { head :bad_request }
```

### RedisStorage

Simple module to organize data in key-value store. Uses `ConnectionPool`
and works good in multi-threaded environments.
Best used with [PooledRedis](https://github.com/printercu/pooled_redis).

```ruby
class Model
  extend RailsStuff::SedisStorage

  self.redis_prefix = :other_prefix # default to underscored model name

  # override .dump, .load for custom serialization. Default to Marshal

  # It uses Rails.redis_pool by default. Override it with
  self.redis_pool = ConnectionPool.new { Redis.new(my_options) }
end

Model.get('key') # GET other_prefix:key
Model.get(['composite', 'key']) # GET other_prefix:composite:key
# .delete works the same way

Model.set('key', data) or Model.set(['composite', 'key'], data)
next_id = Model.set(nil, data) # auto-incremented per-model id
next_id = Model.set(['composite', nil], data) # auto-incremented per-scope id
Model.set(id, data, ex: 10) # pass options for redis
# Or set per-model options for all .set requests:
Model.redis_set_options = {ex: 10}

# generate ids:
Model.next_id or Model.next_id(['composite', 'scope'])
Model.reset_id_seq or Model.reset_id_seq(['composite', 'scope'])
```

### StrongParameters

`#require_permitted` ensures that required values are scalar:

```ruby
params.require_permitted(:access_token, :refresh_token)
# instead of
params.permit(:access_token, :refresh_token).require(:access_token, :refresh_token)
```

### RequireNested

```ruby
class Project < ApplicationRecord
  # To load all files in app/models/project with require_dependency:
  require_nested
  # or pass folder explicitly:
  require_nested('lib/path/to/projects')

  # For non-rails apps use
  RailsStuff::RequireNested.require_nested
  # or call RailsStuff::RequireNested.setup to add #require_nested to Module
end
```

### Helpers usage

Include helper module into `ApplicationHelper`.
Or use `RailsStuff::Helpers::All` to include all helpers together.

Add this sections to your translations ymls:

```yml
helpers:
  actions:
    edit: Change
    delete: Forget about it
  confirm: Really?
  confirmations:
    delete: Will you miss it?
```

And use helpers:

```ruby
translate_action(:edit) or translate_action(:delete)
link_to 'x', url_for(resource),
  method: :delete, data: {confirm:  translate_confirmation(:delete)}
translate_confirmation(:purge_all) # Fallback to default: 'Really?'

# There are helpers for basic links, take a look on helpers/links.rb to know
# how to tune it:
link_to_edit or link_to_edit('url') or link_to_edit([:scope, resource])
link_to_destroy or link_to_destroy('url') or link_to_destroy([:scope, resource])
```

Translation helpers are cached, so there is no need to cache it by yourself in
template if you want to decrease computations. And be aware of it if you
switch locales while rendering single view.

### Test helpers usage

Add `RailsStuff::RSpec.setup` to `rails_helper.rb` to load all the stuff or
pick from `rails_stuff/test_helpers/` and `rails_stuff/rspec`.

Please check the source for complete list of helpers, while this section is not
well-documented.

#### `json_body`
```ruby
assert_equal({'id' => 1, 'name' => 'John'}, response.json_body)
assert_equal('John', response.json_body['name'])
assert_equal('John', response.json_body.name)

# with rspec-its
subject { get :show, id: resource.id }
its(:json_body) { should include 'id' => 1 }
its('json_body.name') { should eq 'John' }
```

`.json_body` helper requires `gem 'hashie'`.

Note that `hashie` conflicts with `Hash` methods, so `.json_body.key` or
`.json_body.hash` will not work as expected (or at all).
Use `json_body['key']` instead.

There is `Configurator` with useful RSpec configs:

#### RSpec configurations

```ruby
# Setup DatabaseCleaner with basic settings:
RailsStuff::RSpec.database_cleaner

# Flush redis after suite and exampes with `flush_redis: true`:
RailsStuff::RSpec.redis

# Run debugger after failed tests:
RailsStuff::RSpec.debug

# Clear log/test.log after suite:
RailsStuff::RSpec.clear_logs

# Raise errors from threads:
RailsStuff::RSpec.thread

# Raise errors for all missing I18n translation:
RailsStuff::RSpec.i18n

# Freeze time with for group/example with `:frozen_time` metadata (requires timecop gem):
RailsStuff::RSpec.frozen_time
```

### PluginManager

Provides simple way to create jQuery plugins. Create class and PluginManager
will create jQuery function for it. It'll create instance of class for each
jQuery element and prevent calling constructor twice.

```coffee
PluginManager.add 'myPlugin', class
  constructor: (@$element, @options) ->
     # ...

  customAction: (options)->
     # ...

  # Add initializers
  $ -> $('[data-my-plugin]').myPlugin()
  # or
  $(document).on 'click', '[data-my-plugin]', (e) ->
    $(@).myPlugin('customAction', event: e)

# Or use it manually
$('.selector').myPlugin().myPlugin('customAction')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `bin/console` for an interactive prompt that will allow you to experiment.

Use [appraisal](https://github.com/thoughtbot/appraisal) to run specs:
`appraisal rspec`.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`,
and then run `bundle exec rake release` to create a git tag for the version,
push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/printercu/rails_stuff/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Implement your feature:
  - Write failing spec for your feature
  - Write code
  - Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
