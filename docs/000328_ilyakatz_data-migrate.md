Data Migrate
====

- [![Version](http://img.shields.io/gem/v/data_migrate.svg?style=flat-square)](https://rubygems.org/gems/data_migrate)
- [![License](http://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](http://opensource.org/licenses/MIT)
- [![Travis](https://img.shields.io/travis/ilyakatz/data-migrate.svg)](https://travis-ci.org/ilyakatz/data-migrate)
- [![Reviewed by Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com)


Run data migrations alongside schema migrations.

Data migrations are stored in `db/data`. They act like schema
migrations, except they should be reserved for data migrations. For
instance, if you realize you need to titleize all your titles, this
is the place to do it.

![Travis](./screenshot.png)

# Why should I use this?

Its seems when a project hits a certain size, I get to manipulate data
outside the application itself.  Changing defaults, new validations,
one-to-one to one-to-many... I found it a pain and dodgy to have to
step up migrations one by one, run a ruby script of some sort, then
resume migrations.  It tanks a lot of the automation of deploy.

If you don't use the one off scripts, you could do it as a regular
migration.  It'd be much better to keep concerns separate. The benefit
of having them separate has to do with your data model.

For instance, lets take an absurd example, to illustrate: You have
a blog application that has posts with many comments.
After some use, you decide you are going to be a trend setter,
and want only one comment per post, and just the text.

Given that you:
- write a migration to add a comment column to `Post`
- write a migration to move the contents of the first comments to the `Post`
- drop the `column_id` column from `Post`
- drop the `Comment` model
- fix all your tests

You've just got bit.  When you `rake setup:development`, the mess gets
mad at you after it creates your database, and starts cranking through
migrations.  It gets to the part where you iterate over the comments
and it blows up.  You don't have a `Comment` model anymore for it to
even try and get 'all' from.  You think you are smarter, and wrap the
ActiveRecord call in a conditional based on the environment.

That's fine until you get that QA gal, and she wants her own thing.
Then the UI people get tired of waiting for the full stack to load on page
refreshes, so you have to edit past migrations...

With Data Migrate, you have the control.  You can generate your
migrations as schema or data as you would as your work flow. For
setting tasks that don't require any intermediate AR activity, like
dev and test, you stick with `db:migrate`.  For production and QA, you
change their scripts to `db:migrate:with_data`.  Of course you want to
test your migration, so you have the choice of `db:migrate:with_data` or
`data:migrate` to just capture that data change.

## What does it do?

Data migrations are stored in `db/data`. They act like schema
migrations, except they should be reserved for data migrations. For
instance, if you realize you need to titleize all yours titles, this
is the place to do it. Running any of the provided rake tasks also
creates a data schema table to mirror the usual schema migrations
table to track all the goodness.

## Rails Support

Support Rails 4.2 through 5.2

### Important notes for older versions

#### v2

If you upgraded to Rails 4 while using `data_migrate` prior to version 2,
the gem wrote data migration versions into
`schema_migrations` table. After the fix, it was corrected to write into
`data_migrations`.

If you need to use these old migrations, add the following configuration

It is recommended to move all legacy migrations from `schema_migrations` table into `data_migrations` table

This may cause some unintended consequences. See [#22](https://github.com/ilyakatz/data-migrate/issues/22)

#### v1

If you've installed previous to v1.1.0, you'll want to delete the
`create_data_migrations_table` migration.

## Installation
Add the gem to your project

    # Gemfile
    gem 'data_migrate'

Then `bundle install` and you are ready to go.

So you know, when you use one of the provide rake tasks, a table
called `data_migrations` will be created in your database. This
is to mirror the way the standard `db` rake tasks work.


## Usage

### Generating Migrations

You can generate a data migration as you would a schema migration:

    rails g data_migration add_this_to_that

### Rake Tasks

    $> rake -T data
    rake data:dump                    # Create a db/data_schema.rb file that stores the current data version
    rake data:forward                 # Pushes the schema to the next version (specify steps w/ STEP=n)
    rake data:migrate                 # Migrate data migrations (options: VERSION=x, VERBOSE=false)
    rake data:migrate:down            # Runs the "down" for a given migration VERSION
    rake data:migrate:redo            # Rollbacks the database one migration and re migrate up (options: STEP=x, VERSION=x)
    rake data:migrate:status          # Display status of data migrations
    rake data:migrate:up              # Runs the "up" for a given migration VERSION
    rake data:rollback                # Rolls the schema back to the previous version (specify steps w/ STEP=n)
    rake data:version                 # Retrieves the current schema version number for data migrations
    rake db:forward:with_data         # Pushes the schema to the next version (specify steps w/ STEP=n)
    rake db:migrate:down:with_data    # Runs the "down" for a given migration VERSION
    rake db:migrate:redo:with_data    # Rollbacks the database one migration and re migrate up (options: STEP=x, VERSION=x)
    rake db:migrate:status:with_data  # Display status of data and schema migrations
    rake db:migrate:up:with_data      # Runs the "up" for a given migration VERSION
    rake db:migrate:with_data         # Migrate the database data and schema (options: VERSION=x, VERBOSE=false)
    rake db:rollback:with_data        # Rolls the schema back to the previous version (specify steps w/ STEP=n)
    rake db:schema:load:with_data     # Load both schema.rb and data_schema.rb files into the database
    rake db:structure:load:with_data  # Load both structure.sql and data_schema.rb files into the database
    rake db:version:with_data         # Retrieves the current schema version numbers for data and schema migrations

Tasks work as they would with the 'vanilla' db version. The 'with_data' addition to the 'db' tasks will run the task in the context of both the data and schema migrations. That is, rake db:rollback:with_data will check to see if it was a schema or data migration invoked last, and do that. Tasks invoked in that space also have an additional line of output, indicating if the action is performed on data or schema.

With 'up' and 'down', you can specify the option 'BOTH', which defaults to false. Using true, will migrate both the data and schema (in the desired direction) if they both match the version provided.  Again, going up, schema is given precedence. Down its data.

`rake db:migrate:status:with_data` provides and additional column to indicate which type of migration.
### Configuration

`data_migrate` respects `ActiveRecord::Base.dump_schema_after_migration`. If it is set to `false`, data schema file will not be generated


By default, data migrations are added to the `db/data/` path. 
You can override this setting in `config/initializers/data_migrate.rb`

```ruby
DataMigrate.configure do |config|
  config.data_migrations_path = "db/awesomepath/"
end

```

## Capistrano Support

The gem comes with a capistrano task that can be used instead of `capistrano/rails/migrations`.

Just add this line to your Capfile:

```ruby
require 'capistrano/data_migrate'
```

From now on capistrano will run `rake db:migrate:with_data` in every deploy.

### Contributing

## Testing

Run tests for a specific version of Rails

```
bundle exec appraisal install
bundle exec appraisal rails-4.2 rspec
bundle exec appraisal rails-5.0 rspec
```

## Thanks
[Andrew J Vargo](http://github.com/ajvargo) Andrew was the original creator and maintainer of this project!

[Jeremy Durham](http://jeremydurham.com/) for fleshing out the idea with me, and providing guidance.

You!  Yes, you. Thanks for checking it out.
