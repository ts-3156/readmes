ThumbsUp
=======

[![Build Status](https://secure.travis-ci.org/bouchard/thumbs_up.png)](http://travis-ci.org/bouchard/thumbs_up) [![Code Climate](https://codeclimate.com/github/bouchard/thumbs_up.png)](https://codeclimate.com/github/bouchard/thumbs_up)

**Note: Version 0.5.x is a breaking change for #plusminus_tally and #tally, with > 50% speedups.**

A ridiculously straightforward and simple package 'o' code to enable voting in your application, a la stackoverflow.com, etc.
Allows an arbitrary number of entities (users, etc.) to vote on models.

### Mixins
This plugin introduces three mixins to your recipe book:

1. **acts\_as\_voteable** : Intended for content objects like Posts, Comments, etc. * (See *Configuration* below for caveats)
2. **acts\_as\_voter** : Intended for voting entities, like Users. * (See *Configuration* below for caveats)
3. **has\_karma** : Adds some helpers to acts\_as\_voter models for calculating karma.

### Inspiration

This plugin started as an adaptation / update of vote\_fu for use with Rails 3. It adds some speed, removes some cruft, and is adapted for use with ActiveRecord / Arel in Rails 3. It maintains the awesomeness of the original vote\_fu.

Installation
============

### Require the gem:
```shell
gem 'thumbs_up'
```

### Create and run the ThumbsUp migration:
```shell
rails generate thumbs_up
rake db:migrate
```

Configuration
=============

The relationship setup by the acts_as_voteable and acts_as_voter mixins both default to `votes`.  This causes one to obscure the other if you have a single class that votes on other instances of the same class.  If you have this scenario:
```ruby
class User < ActiveRecord::Base
  acts_as_voter     # relationship :votes will be obscured by the same named relationship from acts_as_voteable :(
  acts_as_voteable
end
```
Configure alternate relationship names in an initializer at `config/initializers/thumbs_up.rb`:
```ruby
ThumbsUp.configuration.voteable_relationship_name = :votes_on   # defaults to :votes
ThumbsUp.configuration.voter_relationship_name =    :votes_by   # defaults to :votes
```


Usage
=====

## Getting Started

### Turn your AR models into something that can be voted upon.
```ruby
class SomeModel < ActiveRecord::Base
  acts_as_voteable
end

class Question < ActiveRecord::Base
  acts_as_voteable
end
```

### Turn your Users (or any other model) into voters.
```ruby
class User < ActiveRecord::Base
  acts_as_voter
  # The following line is optional, and tracks karma (up votes) for questions this user has submitted.
  # Each question has a submitter_id column that tracks the user who submitted it.
  # The option :weight value will be multiplied to any karma from that voteable model (defaults to 1).
  # You can track any voteable model.
  has_karma :questions, :as => :submitter, :weight => 0.5
  # Karma by default is only calculated from upvotes. If you pass an array to the weight option, you can count downvotes as well (below, downvotes count for half as much karma against you):
  has_karma :questions, :as => :submitter, :weight => [ 1, 0.5 ]
end

class Robot < ActiveRecord::Base
  acts_as_voter
end
```

### To cast a vote for a Model you can do the following:

#### Shorthand syntax
```ruby
voter.vote_for(voteable)     	# Adds a +1 vote
voter.vote_against(voteable) 	# Adds a -1 vote

voter.vote_exclusively_for(voteable)	# Removes any previous votes by that particular voter, and votes for.
voter.vote_exclusively_against(voteable)	# Removes any previous votes by that particular voter, and votes against.

# Alternative method, can pass a hash that includes `:exclusive` and `:direction` options.
voter.vote(voteable, { :exclusive => false, :direction => :up })  # Votes non-exclusively, either a +1 or -1 depending on the `:direction` value

voter.unvote_for(voteable)  # Clears all votes for that user
```

### Querying votes

Did the first user vote for the Car with id = 2 already?
```ruby
u = User.first
u.vote_for(Car.find(2))
u.voted_on?(Car.find(2)) #=> true
```

Did the first user vote for or against the Car with id = 2?
```ruby
u = User.first
u.vote_for(Car.find(2))
u.voted_for?(Car.find(2)) #=> true
u.voted_against?(Car.find(2)) #=> false
```

Or check directly!
```ruby
u = User.first
u.vote_for(Car.find(2))
u.voted_how?(Car.find(2)) #=> true, if voted_for

u.vote_against(Car.find(3))
u.voted_how?(Car.find(3)) #=> false, if voted_against

u.vote_for(Car.find(4))
u.voted_how?(Car.find(4)) #=> nil, if didn't vote for it
```

in case you use `--unique-voting false` (documented below):
```ruby
u.voted_how?(Car.find(2)) #=> [false, true, true, false]
```

#### Tallying Votes

You can easily retrieve voteable object collections based on the properties of their votes:
```ruby
@items = Item.tally.limit(10).where('created_at > ?', 2.days.ago).having('COUNT(votes.id) < 10')
```

Or for MySQL:
```ruby
@items = Item.tally.limit(10).where('created_at > ?', 2.days.ago).having('vote_count < 10')
```

This will select the Items with less than 10 votes, the votes having been cast within the last two days, with a limit of 10 items. *This tallies all votes, regardless of whether they are +1 (up) or -1 (down).* The #tally method returns an ActiveRecord Relation, so you can chain the normal method calls on to it.

#### Tallying Rank ("Plusminus")

**You most likely want to use this over the normal tally**

This is similar to tallying votes, but this will return voteable object collections based on the sum of the differences between up and down votes (ups are +1, downs are -1). For Instance, a voteable with 3 upvotes and 2 downvotes will have a plusminus_tally of 1.
```ruby
@items = Item.plusminus_tally.limit(10).where('created_at > ?', 2.days.ago).having('plusminus_tally > 10')
```

#### Lower level queries
```ruby
positiveVoteCount = voteable.votes_for
negativeVoteCount = voteable.votes_against
# Votes for minus votes against. If you want more than a few model instances' worth, use `plusminus_tally` instead.
plusminus         = voteable.plusminus

voter.voted_for?(voteable) # True if the voter voted for this object.
voter.vote_count(:up | :down | :all) # returns the count of +1, -1, or all votes

voteable.voted_by?(voter) # True if the voter voted for this object.
@voters = voteable.voters_who_voted
```


### One vote per user!

ThumbsUp by default only allows one vote per user. This can be changed by removing:

#### In vote.rb:
```ruby
validates_uniqueness_of :voteable_id, :scope => [:voteable_type, :voter_type, :voter_id]
```

#### In the migration, the unique index:
```ruby
add_index :votes, ["voter_id", "voter_type", "voteable_id", "voteable_type"], :unique => true, :name => "uniq_one_vote_only"
```
You can also use `--unique-voting false` when running the generator command:
```shell
rails generate thumbs_up --unique-voting false
```

#### Testing ThumbsUp

Testing is a bit more than trivial now as our #tally and #plusminus_tally queries don't function properly under SQLite. To set up for testing:

* mysql

```sql
$ mysql -uroot # You may have set a password locally. Change as needed.
  > CREATE USER 'test'@'localhost' IDENTIFIED BY 'test';
  > CREATE DATABASE thumbs_up_test;
  > USE thumbs_up_test;
  > GRANT ALL PRIVILEGES ON thumbs_up_test TO 'test'@'localhost' IDENTIFIED BY 'test';
  > exit;
```
* Postgres

```PLpgSQL
$ psql # You may have set a password locally. Change as needed.
  > CREATE ROLE test;
  > ALTER ROLE test WITH SUPERUSER;
  > ALTER ROLE test WITH LOGIN;
  > CREATE DATABASE thumbs_up_test;
  > GRANT ALL PRIVILEGES ON DATABASE thumbs_up_test to test;
  > \q
```
* Run tests

```shell
$ rake # Runs the test suite against all adapters.
```

Credits
=======

Basic scaffold is from Peter Jackson's work on VoteFu / ActsAsVoteable. All code updated for Rails 3, cleaned up for speed and clarity, karma calculation fixed, and (hopefully) zero introduced bugs.
