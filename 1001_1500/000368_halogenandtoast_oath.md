# NOTICE

Monban is currently in the process of being renamed Oath: https://github.com/halogenandtoast/oath


# Oath

[![Build Status](https://travis-ci.org/halogenandtoast/oath.png?branch=master)](https://travis-ci.org/halogenandtoast/oath)
[![Code Climate](https://codeclimate.com/github/halogenandtoast/oath.png)](https://codeclimate.com/github/halogenandtoast/oath)

Oath is designed to be a very simple and extensible user authentication
library for rails. Its goal is to give all the power to the developer instead
of forcing them to make Oath work with their system.

## Why use Oath?

Oath makes authentication simple:

- Easy to use in tests with dependency injection
- Provides convenient controller helpers
- Very customizable

Oath doesn't do the following:

- Doesn't automatically add routes to your application
- Doesn't force you to use engine based controllers or views
- Doesn't require you to make changes to your user model

## Documentation

You can read the full documentation at [rubydoc](http://rubydoc.info/github/halogenandtoast/oath)

## Installation

Oath was designed to work with Rails > 4.0. Add this line to your Gemfile:

    gem 'oath'

Then inside of your ApplicationController add the following:

    include Oath::ControllerHelpers

And you're ready to start designing your authentication system.

## Generators

If you'd like a good starting point for building an app using Oath, it is suggested to use the [oath generators]

## Usage

Oath does currently have some out-of-the-box expectations, but you can
configure and change any of these:

- By default the model should be called `User`
- Oath expects your user model to respond to `create`, `id`, and `find_by`
- You should have an `email` and `password_digest` column on your `User`
- Passwords will be handled with BCrypt

### Suggestions

#### Console Usage

If you're trying to sign up a User in a console you won't be able to call User#new or User#create because the User model does not know how to encrypt passwords.
You should instead use the sign up service in order to create the user:

```ruby
Oath.config.sign_up_service.new(email: "foo@example.com", password: "password").perform
```

#### Validations

Oath doesn't add validations to your user model unless you're using [oath generators] so it's suggested to add the following validations:

```ruby
validates :email, presence: true, uniqueness: true
validates :password_digest, presence: true
```

In addition to that you'll want to add the following to your `config/locale/en.yml`:

```yaml
en:
  activerecord:
    attributes:
      user:
        password_digest: "Password"
```

Which will generate the error message `Password can't be blank` instead of `Password digest can't be blank`.

#### Layout changes

It is suggested you add something like this to your application layout:

```erb
<% if signed_in? %>
  <%= link_to "Sign out", session_path, method: :delete %>
<% else %>
  <%= link_to "Sign in", new_session_path %>
  <%= link_to "Sign up", new_user_path %>
<% end %>
```

#### Guest user

If you want to introduce a Guest object when a user is not signed in, you can override Oath's `current_user` method in your `ApplicationController`:

```ruby
def current_user
  super || Guest.new
end
```

In `app/models/`, define a `Guest` class:

```ruby
class Guest
  def name
    "Guest"
  end
end
```

This article on the [Null Object Pattern](http://robots.thoughtbot.com/handling-associations-on-null-objects) provides a good explanation of why you might want to do this.

#### Using I18n for sign in notice

If you want to use I18n for the notice instructing users to sign in when they try to access an unauthorized page you can do so with the following configuration:

```ruby
Oath.configure do |config|
  config.sign_in_notice = -> { I18n.t("sign_in_notice") }
end
```

It is suggested to store this file at `config/initializers/oath.rb`

### Controller Additions

Oath provides the following controller methods:

- `sign_in(user)`
- `sign_out`
- `sign_up(user_params)`
- `authenticate(user, password)`
- `authenticate_session(session_params)`
- `reset_password(user, password)`

These helpers:

- `current_user`
- `signed_in?`

And this filter:

- `require_login`

### Routing Constraints

To authorize users in `config/routes.rb`:

```ruby
require "oath/constraints/signed_in"
require "oath/constraints/signed_out"

Blog::Application.routes.draw do
  constraints Oath::Constraints::SignedIn.new do
    root "dashboards#show", as: :dashboard
  end

  constraints Oath::Constraints::SignedOut.new do
    root "landings#show"
  end
end
```

## Usage in Tests

### Test mode

Oath provides the following:

```ruby
Oath.test_mode!
```

Which will change password hashing method to provide plaintext responses instead of using BCrypt. This will allow you to write factories using the password_digest field:

```ruby
FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password_digest 'password'
  end
end
```

### Spec helpers

A couple of convenience methods are available in your tests. In order to set this up you'll want to add the following to `rails_helper.rb` or if that doesn't exist `spec_helper.rb`

```ruby
Oath.test_mode!

RSpec.configure do |config|
  config.include Oath::Test::Helpers, type: :feature
  config.after :each do
    Oath.test_reset!
  end
end
```

Then you can use any of the [test helpers] in your scenarios

```ruby
feature "A feature spec" do
  scenario "that requires login" do
    user = create(:user)
    sign_in(user)
    # do something
    sign_out
    # do something else
  end
end
```

### Oath Backdoor

Similar to clearance's backdoor you can visit a path and sign in quickly via

```ruby
user = create(:user)
visit dashboard_path(as: user)
```

To enable this functionality you'll want to add the following to `config/environments/test.rb`:

```ruby
config.middleware.insert_after Warden::Manager, Oath::BackDoor
```

If you'd like to find your User model by a field other than `id`, insert the
middleware with a block that accepts the `as` query parameter and returns an
instance of your User model:

```ruby
config.middleware.insert_after Warden::Manager, Oath::BackDoor do |user_param|
  User.find_by(username: user_param)
end
```

### Controller Specs

If you are going to write controller tests, helpers are provided for those as well:

```ruby
Oath.test_mode!

RSpec.configure do |config|
  config.include Oath::Test::ControllerHelpers, type: :controller
  config.after :each do
    Oath.test_reset!
  end
end
```

```ruby
require 'spec_helper'

describe ProtectedController do

  describe "GET 'index'" do
    it "returns http success when signed in" do
      user = create(:user)
      sign_in(user)
      get 'index'
      response.should be_success
    end

    it "redirects when not signed in" do
      get 'index'
      response.should be_redirect
    end
  end
end
```

## Advanced Functionality

### Authentication with username instead of email

If you want to sign in with username instead of email just change the configuration option

```ruby
# config/initializers/oath.rb
Oath.configure do |config|
  config.user_lookup_field = :username
end
```

If you used the oath:scaffold generator from [oath generators] you'll have to change the following four references to email.

* In SessionsController#session_params
* In UsersController#user_params
* The email form field on sessions#new
* The email form field on users#new

### Using multiple lookup fields

You may perform a look up on a user using multiple fields by doing something like the following:

```ruby
class SessionsController < ApplicationController
  def create
    user = authenticate_session(session_params, email_or_username: [:email, :username])

    if sign_in(user)
      redirect_to(root_path)
    else
      render :new
    end
  end

  private

  def session_params
    params.require(:session).permit(:email_or_username, :password)
  end

end
```

This will allow the user to enter either their username or email to login

## Configuration

Oath::Configuration has lots of options for changing how oath works. Currently the options you can change are as follows:

### User values

* **user_lookup_field**: (default `:email`) Field in the database to lookup a user by.
* **user_token_field**: (default `:password`) Field the form submits containing the undigested password.
* **user_token_store_field**: (default: `:password_digest`) Field in the database that stores the user's digested password.
* **user_class**: (default: `'User'`) The user class.

### Services

* **sign_in_notice**: (default: `You must be signed in`) Rails flash message to set when user signs in.
* **sign_in_service**: (default: `Oath::Services::SignIn`) Service for signing a user in.
* **sign_up_service**: (default: `Oath::Services::SignUp`) Service for signing a user up.
* **sign_out_service**: (default: `Oath::Services::SignOut`) Service for signing a user out.
* **authentication_service**: (default: `Oath::Services::Authentication`) Service for authenticated a user.
* **password_reset_service**: (default: `Oath::Services::PasswordReset`) Service for resetting a user's password.

### Rails values

* **no_login_handler**: A before_action for rails that handles when a user is not signed in.
* **no_login_redirect**: Used by the no_login_handler to redirect the user

### Methods

* **hashing_method**: Method to hash an undigested password.
* **token_comparison**: Method to compare a digested and undigested password.
* **creation_method**: Method for creating a user.
* **find_method**: Method for finding a user.

### Warden Settings

* **failure_app**: Necessary for warden to work. A rack app that handles failures in authentication.

## Limitations

Here are a few of the current limitations of oath:

- Oath assumes you only have one user model.

## Contributing

1. [Fork it](https://github.com/halogenandtoast/oath/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[oath generators]: https://github.com/halogenandtoast/oath-generators
[test helpers]: https://github.com/halogenandtoast/oath/blob/master/lib/oath/test/helpers.rb
