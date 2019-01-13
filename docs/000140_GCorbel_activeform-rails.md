# ActiveForm

Apply form objects to ActiveModel. Form objects have responsability to decouple the form logic from the model. It will help you to simplify your models.

## Installation

Add this line to you Gemfile :

```ruby
  gem 'activeform-rails'
```

Please make sure you are running a compatible version of Ruby, see below.

## Quick example

In order to manage category and users, you can create an object like this :

```ruby
class Form
  include ActiveForm::Form

  properties :name, on: :user
  properties :title, on: :category

  self.main_model = :user
end
```

Now, you can do this :

```ruby
user = User.new
category = Category.new
form = Form.new(user: user, category: category)
form.user # return the user
form.user == user # return true

form.user.name # return nil
form.name # return nil
form.fill_attributes(name: 'GCorbel')
form.user.name # return 'GCorbel'
form.name # return 'GCorbel'

form.valid? # return true
form.save # save all models and return true
```

## Example without backing by an ActiveModel

If you would like to use form objects to provide validations to simple objects, simply omit the `on` argument and `main_model` definition as follows :

```ruby
class Form
  include ActiveForm::Form
  properties :name, :title
  validates_presence_of :title
end

form = Form.new(name: 'John')
form.name # return John
form.title # return nil
form.valid? # return false
```

## Use validations

Validations works like a normal ActiveModel class. So, you can do this :

```ruby
class Form
  include ActiveForm::Form

  properties :name, on: :user

  validates :name, presence: true

  self.main_model = :user
end
```

And use it like this :


```ruby
user = User.new
form = Form.new(user: user)
form.valid? # return false
form.errors # return #<ActiveModel::Errors:0x007fe603816640 @messages={name:["can't be blank"]}>
form.fill_attributes(name: 'GCorbel')
form.valid? # return true
```


To validate the unicity or a property, you can do this :

```ruby
class Form
  include ActiveForm::Form
  include ActiveForm::ValidateUniqueness
  properties :name, on: :user
  validates_uniqueness_of :name, :user
end
```

The `validates_uniqueness_of` take two parameters, the first is the property which should be unique and the second is the model for this property.

## Saving forms

There is two methods to save forms, `save` and `save!`. `save` will return true or false if the model is valid or not. `save!` will return an error and will rollback all change mades.

You can customize those methods by adding a block like this :

```ruby
class Form
  include ActiveForm::Form

  properties :name, on: :user

  self.main_model = :user
end

form = Form.new(user: User.new)
form.save do |f|
  f.user # return the user
end
```

You can also override the save method like this :

```ruby
class Form
  include ActiveForm::Form

  properties :name, on: :user

  self.main_model = :user

  def save
    super do
      user.save
    end
  end
end
```

**Take care :** If your logic is too complex, it's probably better to use a service object.

## has_many relationship

To manage a has_many relationship, you can do it like this :

```ruby
class Form
  include ActiveForm::Form
  properties :name, on: :category
  self.main_model = :category

  attr_accessor :user_ids

  def save
    super do
      category.users = user_ids.map { |user_id| User.find(user_id) }
      category.save
    end
  end
end
```

## Alias properties

Sometimes it's useful to create an alias for a method, you can do it like this :

```ruby
class Form
  include ActiveForm::Form
  properties :name, on: :category
  alias_property :category_name, :name
  self.main_model = :category
end

form = Form.new(category: Category.new(name: 'bacon'))
form.category_name # return 'bacon'
form.category_name = 'beef'
form.category_name # return 'beef'
```

## Complete Example

You can find an example of a working application in the spec/dummy directory.

## Requirements

Ruby 2 or greater.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
