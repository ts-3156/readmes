Record Cache
============

[![Build Status](http://img.shields.io/travis/orslumen/record-cache.svg?style=flat)](https://travis-ci.org/orslumen/record-cache)
[![Gem Version](http://img.shields.io/gem/v/record-cache.svg?style=flat)](https://rubygems.org/gems/record-cache)

*Cache Active Model Records in Rails 3 and Rails 4*

Record Cache transparently stores Records in a Cache Store to retrieve those Records from the store when queried using Active Model.
Cache invalidation is performed automatically when Records are created, updated or destroyed. Currently only Active Record is supported, but more
data stores may be added in the future.

Usage
-----

#### Installation

Add the following line to your Gemfile:

    gem 'record-cache'


#### Initializer

In /config/initializers/record_cache.rb:

    # --- Version Store
    # All Workers that use the Record Cache should point to the same Version Store
    # E.g. a MemCached cluster or a Redis Store (defaults to Rails.cache)
    RecordCache::Base.version_store = Rails.cache

    # --- Record Stores
    # Register Cache Stores for the Records themselves
    # Note: A different Cache Store could be used per Model, but in most configurations the following 2 stores will suffice:

    # The :local store is used to keep records in Worker memory
    RecordCache::Base.register_store(:local, ActiveSupport::Cache.lookup_store(:memory_store))

    # The :shared store is used to share Records between multiple Workers
    RecordCache::Base.register_store(:shared, Rails.cache)

    # Different logger
    # RecordCache::Base.logger = Logger.new(STDOUT)


#### Models

Define the Caching Strategy in your models.

Typical Example: /app/models/person.rb:

    class Person < ActiveRecord::Base
      cache_records :store => :shared, :key => "pers"
    end

Example with Index Cache: /app/models/permission.rb:

    class Permission < ActiveRecord::Base
      cache_records :store => :shared, :key => "perm", :index => [:person_id]

      belongs_to :person
    end

Example with Full Table Cache: /app/models/priority.rb:

    class Priority < ActiveRecord::Base
      cache_records :store => :local, :key => "prio", :full_table => true
    end

The following options are available:

- <a name="store" />`:store`: The name of the Cache Store for the Records (default: `Rails.cache`)

    _@see Initializer section above how to define named Cache Stores_

- <a name="key" />`:key`: Provide a short (unique) name to be used in the cache keys (default: `<model>.name`)

    _Using shorter cache keys will improve performance as less data is sent to the Cache Stores_

- <a name="unique_index" />`:unique_index`: The name(s) of the unique index column (default: `id`)

    _Choose a different column as the unqiue index column in case it is not `id`_

- <a name="index" />`:index`: An array of `:belongs_to` attributes to cache `:has_many` relations (default: `[]`)

    _`has_many` relations will lead to queries like: `SELECT * FROM permissions WHERE permission.person_id = 10`
      As Record Cache only caches records by ID, this query would always hit the DB. If an index is set
      on person_id (like in the example above), Record Cache will keep track of the Permission IDs per
      Person ID.
      Using that information the query will be translated to: `SELECT * FROM permissions WHERE permission.id IN (14,15,...)`
      and the permissions can be retrieved from cache.
      Note: The administration overhead for the Permission IDs per Person ID leads to more calls to the Version Store and the Record
      Store. Whether or not it is profitable to add specific indexes for has_many relations will differ per use-case._

- <a name="full_table" />`:full_table`: Whether the whole table should be stored as a single block in the cache (default: `false`)

    _Use this option in case this table is small, is only rarely updated and needs to be retrieved as a whole in most cases.
     For example to fill a Language or Country drop-down._

- <a name="ttl" />`:ttl`: Time to live (default: `infinitely`)

    _In case not all updates go through Rails (not a recommended design) this option makes it possible to specify a TTL for the cached
     records._

It is also possible to listen to write failures on the Version Store that could lead to stale results: 

    RecordCache::Base.version_store.on_write_failure{ |key| clear_this_key_after_2_seconds(key) }


#### Tests

To switch off Record Cache during the tests, add the following line to /config/environments/test.rb:

    RecordCache::Base.disable!

But it is also possible (and preferable during Integration Tests) to keep the Record Cache switched on.
To make sure the cache is invalidated for all updated Records after each test/scenario, require the
resettable_version_store and reset the Version Store after each test/scenario.

RSpec 2 example, in spec/spec_helper.rb:

    require 'record_cache/test/resettable_version_store'

    RSpec.configure do |config|
      config.after(:each) do
        RecordCache::Base.version_store.reset!
      end
    end

Cucumber example, in features/support/env.rb:

    require 'record_cache/test/resettable_version_store'

    After do |scenario|
      RecordCache::Base.version_store.reset!
    end


Restrictions
------------

1. This gem is dependent on Rails 3 or Rails 4

2. Only Active Record is supported as a data store.

3. All servers that host Workers should be time-synchronized (otherwise the Version Store may return stale results).

#### Caveats

1. Record Cache sorting mimics the MySQL sort order being case-insensitive and using collation.
   _If you need a different sort order, check out the code in `<gem>/lib/record_cache/strategy/util.rb`._

1. Using `update_all` to modify attributes used in the [:index option](#index) will lead to stale results.

1. (Uncommon) If you have a model (A) with a `has_many :autosave => true` relation to another model (B) that defines a
   `:counter_cache` back to model A, the `<model B>_count` attribute will contain stale results. To solve this, add an
   after_save hook to model A and update the `<model B>_count` attribute there in case the `has_many` relation was loaded.

1. The combination of Mongrel (Rack) and the Dalli `:threadsafe => false` option will lead to the following errors in
   your log file: `undefined method `constantize’ for 0:Fixnum`. This is because Mongrel creates multiple threads.
   To overcome this, set thread_save to true, or consider using a different webserver like Unicorn.

1. Nested transactions: When using nested transactions, Rails will also call the after_commit hook of records that were
   updated within a nested transaction that was rolled back. This will cause the cache to contain updates that are not
   in the database.
   To overcome this, skip using nested transactions, or disable record cache and manually invalidate all records that were
   possibly updated within the nested transactions.
   
1. Flapping version store. Due to network hiccups the version store may not always be accessible to read/write the current
   version of a record. This may lead to stale results. The `on_write_failure` hook can be used to be informed when the
   communication to the version store fails and to take appropriate action, e.g. resetting the version store for that
   record some time later.

Explain
-------

#### Retrieval

Each query is parsed and sent to Record Cache before it is executed to check if the query is cacheable.
A query is cacheable if:

- it contains at least one `where(:id => ...)` or `where(<indexed attribute> => ...)` clause, and

- it contains zero or more `where(<attribute> => <single value>)` clauses on attributes in the same model, and

- it has no `limit(...)` defined, or is limited to 1 record and has exactly one id in the `where(:id => ...)` clause, and

- it has no `order(...)` clause, or it is sorted on single attributes using ASC and DESC only

- it has no joins, calculations, group by, etc. clauses

When the query is accepted by Record Cache, all requested records will be retrieved and cached as follows:

ID queries:

1. The Version Store is called to retrieve the current version for each ID using a `multi_read` (keys `rc/<model-name>/<id>`).

2. A new version will be generated (using the current timestamp) for each ID unknown to the Version Store.

3. The Record Store is called to retrieve the latest data for each ID using a `multi_read` (keys `rc/<model-name>/<id>v<current-version>`).

4. The data of the missing records is retrieved directly from the Data Store (single query) and are subsequently cached in the Record Store.

5. The data of all records is deserialized to Active Model records.

6. The other (simple) `where(<attribute> => <single value>)` clauses are applied, if applicable.

7. The (simple) `order(...)` clause is applied, if applicable.

Index queries:

1. The Version Store is called to retrieve the current version for the group (key `rc/<model-name>/<index>/<id>`).

2. A new version will be generated (using the current timestamp) in case the current version is unknown to the Version Store.

3. The Record Store is called to retrieve the latest set of IDs in this group (key `rc/<model-name>/<index>/<id>v<current-version>`).

4. In case the IDs are missing, the IDs (only) will be retrieved from the Data Store (single query) and subsequently cached in the Record Store.

5. The IDs are passed as an ID query to the id-based-cache (see above).


#### Invalidation

The `after_commit, :on => :create/:update/:destroy` hooks are used to inform the Record Cache of changes to the cached records.

ID cache:

- `:create`: add a new version to the Version Store and cache the record in the Records Store

- `:update`: similar to :create

- `:destroy`: remove the record from the Version Store

Index cache:

- `:create`: increment Version Store for each index that contains the indexed attribute value of this record.
             In case the IDs in this group are cached and fresh, add the ID of the new record to the group and store
             the updated list of IDs in the Records Store.

- `:update`: For each index that is included in the changed attribute, apply the :destoy logic to the old value
             and the :create logic to the new value.

- `:destroy`: increment Version Store for each index that contains the indexed attribute value of this record.
              In case the IDs in this group are current cached and fresh, remove the ID of the record from the group and store
              the updated list of IDs in the Records Store.

The `update_all` method of Active Record Relation is also overridden to make sure that mass-updates are processed correctly, e.g. used by the
:counter_cache. As the details of the change are not known, all records that match the IDs mentioned in the update_all statement are invalidated by
removing them from the Version Store.

Finally for `has_many` relations, the `after_commit` hooks are not triggered on add and remove. Whether this is a bug or feature I do not know, but
for Active Record the Has Many Association is patched to invalidate the Index Cache of the referenced (reflection) Record in case it has
an [:index](#index) on the reverse `belongs_to` relation.


Development
-----------

    $ bundle
    $ appraisal

    # run the specs (requires ruby 1.9.3)
    $ appraisal rake

    # run the specs for a particular version (supported are rails-30, rails-31, rails-32, rails-40)
    $ appraisal rails-32 rake

    # run a single spec
    $ appraisal rails-40 rspec ./spec/lib/strategy/base_spec.rb:61

Deploying the gem:

    # Don't forget to update the version in lib/record_cache/version.rb
    $ git tag -a v0.1.1 -m 'version 0.1.1'
    $ git push origin master --tags
    $ gem update --system
    $ gem build record-cache.gemspec
    $ gem push record-cache-0.1.1.gem

Debugging the gem:

Switch on DEBUG logging (`config.log_level = :debug` in development.rb) to get more information on cache hits and misses.


Release Notes
-------------

#### Version 0.1.5 (next version)

1. On-write-failure hook on the version store
1. 

#### Version 0.1.4

1. Case insensitive filtering
1. to_sql no longer destroying the sql binds (John Morales)
1. Rails 4.0 support (Robin Roestenburg & Pitr https://github.com/orslumen/record-cache/pull/44)
1. Rails 4.1 support (Pitr https://github.com/orslumen/record-cache/pull/45)
1. Fix for +select('distinct ...')+ construct


#### Version 0.1.3

Fixed Bugs:

1. "\u0000" is also used by Arel as a parameter query binding marker.
1. https://github.com/orslumen/record-cache/issues/2: bypassing record_cache when selecting rows with lock

Added:

1. Release Notes ;)
1. Ruby 1.9 fixes, has_one support, Remove Freeze for Dalli encoding (Bryan Mundie https://github.com/orslumen/record-cache/pull/3)
1. :unique_index option
1. :full_table option
1. [Appraisal](https://github.com/thoughtbot/appraisal) - working with different Rails versions
1. [Travis CI](https://travis-ci.org/orslumen/record-cache) - continuous integration service (Robin Roestenburg https://github.com/orslumen/record-cache/pull/33)
1. Rails 3.1 and 3.2 support
1. Replace request_cache in favor of ActiveRecord::QueryCache (Lawrence Pit https://github.com/orslumen/record-cache/pull/11)
1. Possibility to set a custom logger
1. Select queries within a transaction will automatically bypass the cache
1. No more increment calls to the Version Store (only set and delete)
1. Support for Dalli's +multi+ method to pipeline multiple cache writes (when storing multiple fresh records in the cache, or outdating multiple records after update_all)
1. Updated tests to RSpec 3
1. Fix deserialization of records with serialized attributes, see https://github.com/orslumen/record-cache/issues/19
1. Ruby 2 fix


#### Version 0.1.2

Refactoring: Moved Serialization, Sorting and Filtering to separate Util class.

Now it is possible to re-use MySQL style sorting (with collation) in your own app, e.g. by calling `RecordCache::Strategy::Util.sort!(Apple.all, :name)`.


#### Version 0.1.1

Added support for Rails 3.1


#### Version 0.1.0

First version, with the following Strategies:

1. Request Cache
1. ID Cache
1. Index Cache

----
Copyright (c) 2011-2015 Orslumen, released under the MIT license
