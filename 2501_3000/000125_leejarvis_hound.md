# Hound

[![Build Status](https://travis-ci.org/injekt/hound.png?branch=master)](https://travis-ci.org/injekt/hound)

Hound is designed to track activity on models. It'll track your usual
`create` `update` and `destroy` actions as well as custom activity.

At [Allur](https://www.allur.com) or more specifically the
[Spark CRM](http://allurspark.com) we've built, we use Hound for implementing
activity tabs on our popular models. These activity tabs display
the last x amount of actions taken out upon these models. We have a lot
of custom associations so we can't simply track the `update` to models.
With Hound we can build custom actions on the fly.

If you need something similar, Hound could be a good fit.

## Installation

Add Hound to your `Gemfile` and run `bundle install`:

```ruby
gem 'hound'
```

Hound expects a `hound_actions` table to exist in your schema, go ahead
and run the generator provided:

```
rails generate hound:install
```

This will create a new migration file. Run `rake db:migrate` to add
this table.

## Usage

Hound will automatically track `create` `update` and `destroy` methods that
occur on your 'hounded' models. You can tell Hound which actions you'd like
to track in the `hound` method:

```ruby
class Article < ActiveRecord::Base
  hound actions: [:create, :update] # only track create/update
end
```

Hound also adds a `hound_action` helper method to your controllers. This
allows you to set a custom action on any of your hounded models.

```ruby
class ArticlesController < ApplicationController
  def add_to_frontpage
    # Does not update @article so no action will be created
    @frontpage << @article
    hound_action @article, 'added_to_frontpage'
  end
end

@article.actions.last.action #=> 'added_to_frontpage'
```

Hound will track the current user making these changes assuming your
application controller responds to a `current_user` method. If you have a
custom method, you can override `hound_user` to return this instead.

```ruby
class ApplicationController < ActionController::Base
  def hound_user
    current_admin_user
  end
end
```

For this to work successfully you must tell Hound about your user class
using the `hound_user` method. The `user` association on the `Hound::Action`
class is polymorphic, so you can use `hound_user` in more than one class.

```ruby
class User
  hound_user
end

class Admin
  hound_user
end
```

Now `hound_user` can return either an instance of `User` or an instance of
`Admin`.

You can also disable Hound on a model instance basis:

```ruby
article = Article.new title: 'Hello, World!'
article.hound? #=> true
article.hound = false # disable hound
article.save
article.actions #=> []
```

## Tracking Changes

Hound also tracks the changes made when updating your hounded records. You
can access the change updates through the `changeset` attribute:

```ruby
article = Article.create! title: 'Hello, World!'
article.update_attributes(title: 'Salut, World!')
article.actions.last.changeset
  #=> {"title" => ["Hello, World!", "Salut, World!"]}
```

## Displaying model activity

Because Hound hooks into your existing user model as well as any models
you tell it to track, you can display activity from either side. In fact,
your user object doesn't even need to belong to the object you're tracking.

```ruby
current_user.name #=> "Lee"
article = Article.create! title: 'Hello, World!'

article.actions.each do |action|
  puts "#{action.user.name} #{action + 'ed'} the " \
    "#{action.actionable_type} #{action.actionable.title}"
end

current_user.actions.each do |action|
  puts "#{action.user.name} #{action + 'ed'} the " \
    "#{action.actionable_type} #{action.actionable.title}"
end
```

Both of the above snippets will print the same thing:

```
Lee created the Article Hello, World!
```

## Console

Hound implements a storage facility on the current thread for storing
the id of the current user. This is how we make it available to the model
data without sending it via the controller itself. This means when
creating records via the console, there will be no `current_user` available.

```ruby
>> Article.create! title: 'Foo'
>> _.actions.last.user
=> nil
```

You can solve this by setting `Hound.store[:current_user_id]`:

```ruby
>> Hound.store[:current_user_id] = User.create!(name: 'Lee').id
>> Article.create! title: 'Foo'
>> _.actions.last.user.name
=> "Lee"
```

## Cleaning Up

With all this action creating we're doing, your database is bound to start
getting full quickly. You have two options for cleaning up after yourself,
either create a rake task:

```ruby
task :prune_hound_actions do
  Hound.actions.where('created_at < ?', 1.week.ago).delete_all
end
```

And run it as a cron job, or you can simply limit records on a per model basis

```ruby
class Article < ActiveRecord::Base
  hound limit: 10
end
```

Now Hound will never store more than 10 actions for an Article. You can
configure this globally through `Hound.config.limit`, too. Do note though
that adding this functionality means whenever an action is tracked, Hound
will not only create a new action, it will check and destroy any actions
outside of this limit. This requires an extra call to the database, so if
that could be an issue, using a rake task might be a better idea.

## But we already have Paper Trail?

Yes, and Paper Trail is awesome. Hound is not designed to replace it. They
do different things. Hound is designed to track activity (in the form of
actions) on a model. Paper Trail does the same thing but it stores snapshots
of your model at certain times (when they change). Hound is not just for
tracking changes to your model, but you can attach custom activity to it, too.

* Do I want custom actions and activity attached to my models? Use Hound.
* Do I need to restore my model to an earlier time? Use Paper Trail.

At [Allur](https://www.allur.com) we use them both for different things,
and they work great.

## TODO

* Implement action grouping
* Generate a config initializer on install?
* Disable hound in test environment?