RESTful_ACL
===========
RESTful_ACL is a full-stack context-based permission engine. It provides access control that is contextually aware. (If a parent is closed, a child is not editable, etc.) Permission is as simple as true or false.

Rails 3
-------
RESTful_ACL 3.1 and on are Rails 3 ready. Rails 2 will no longer be supported. Sorries.

Requirements
------------
RESTful_ACL requires the notion of a `current_user`. Most authenticaion plugins provide this (AuthLogic, RESTful_Authentication, etc.)

How to Install
--------------
Install the RESTful_ACL gem:

    sudo gem install restful_acl -s http://gemcutter.org

Add the gem to your Gemfile file as thus:

    gem "restful_acl"

RESTful_ACL requires a named route named "denied". Add the following to your routes.rb file:

    map.denied 'denied', :controller => 'some_controller', :action => 'denied_action'

Controllers
-----------
Add `before_filter :has_permission?` into any controller that you'd like to restrict access to (or `application_controller.rb` for your entire app).

Models
------
Define the following five methods in the model of every resource you'd like to restrict access to. The five methods can contain anything you'd like so long as they return a boolean true or false. This allows you to define your User's roles any way you wish.

    class Issue < ActiveRecord::Base

      # This method checks permissions for the :index action
      def self.is_indexable_by(user, parent = nil)
      end

      # This method checks permissions for the :create and :new action
      def self.is_creatable_by(user, parent = nil)
      end

      # This method checks permissions for the :show action
      def is_readable_by(user, parent = nil)
      end

      # This method checks permissions for the :update and :edit action
      def is_updatable_by(user, parent = nil)
      end

      # This method checks permissions for the :destroy action
      def is_deletable_by(user, parent = nil)
      end

    end

Parent / Child resources
------------------------

Sometimes actions should only be allowable on a resource if some "parent" resource allows them. Contextual permissions FTW.

Link your "child" resource with its "parent" resource by using the `logical_parent` macro and you'll have access to the "parent" resource in your child's RESTful_ACL methods.

    class Child < ActiveRecord::Base
      logical_parent :parent
      ...
    end

If the "child" resource is a singleton, just pass `:singleton` to the `logical_parent` macro:

    class Car < ActiveRecord::Base
      logical_parent :owner, :singleton
      ...
    end

View Helper
-----------

RESTful_ACL adds a view helper called `allowed?`. Simply pass this method a block containing the URL you'd like to check permission on and it will do the rest.
The link will appear if the `current_user` is allowed to access the passed-in link's action.

    = allowed?{ link_to ‘Foo Index’, foos_path }
    = allowed?{ link_to 'Edit Foo', edit_foo_path(@foo) }
    = allowed?{ link_to 'Create Foo', new_foo_path }
    = allowed?{ link_to 'View Foo', foo_path(@foo) }
    = allowed?{ link_to 'Delete Foo', foo_path(@foo), :method => :delete }


Huh? Here's an example
----------------------
Let's say that you have two resources: `Project` and `Issue`. A Project has many Issues, an Issue belongs to a Project. I'd like to make sure that the current user is a member of the Project before they can create a new Issue in that Project:

    class Issue < ActiveRecord::Base
      logical_parent :project

      belongs_to :author
      belongs_to :project

      def self.is_indexable_by(user, parent = nil)
        user.projects.include?(parent)
      end

      def self.is_creatable_by(user, parent = nil)
        user.projects.include?(parent)
      end

      def is_updatable_by(user, parent = nil)
        user == author && parent.is_active?
      end

      def is_deletable_by(user, parent = nil)
        user == author
      end

      def is_readable_by(user, parent = nil)
        user.projects.include?(parent)
      end
    end

If you still have questions, please checkout the [test app](http://github.com/mdarby/restful_acl_app)

Admins RULE!
------------
RESTful_ACL grants global access to all actions to site administrators. To enable this, make sure that your User model defines an `is_admin?` method *and/or* an `is_admin` attribute. If the `current_user.is_admin?` returns true, access will be granted automatically.

How to Test
-----------
I normally do something along these lines in RSpec:

    describe "Issue" do
      before do
        @project = mock_model(:project)
        @author  = mock_model(:user, :projects => [@project])
        @issue   = Factory(:issue, :author => @author, :project => @project)
      end

      it "should be modifiable by the author when the Project is active" do
        @project.stub!(:is_active? => true)
        @issue.is_updatable_by(@author, @project).should be_true
      end

      it "should be deletable by the author" do
        @issue.is_deletable_by(@author, @project).should be_true
      end

      it "should be readable by those assigned to the Project" do
        Issue.is_readable_by(@author, @project).should be_true
      end

      it "should be creatable by those assigned to the Project" do
        Issue.is_creatable_by(@author, @project).should be_true
      end
    end

About the Author
----------------
My name is [Matt Darby.](http://blog.matt-darby.com) I’m an IT Manager and pro-web-dev at for [Dynamix Engineering](http://dynamix-ltd.com) and hold a Master’s Degree in Computer Science from [Franklin University](http://www.franklin.edu) in sunny [Columbus, OH.](http://en.wikipedia.org/wiki/Columbus,_Ohio)

Feel free to check out my [site](http://matt-darby.com) or [recommend me](http://www.workingwithrails.com/person/10908-matt-darby)
