[![Gem Version](https://badge.fury.io/rb/transpec.svg)](http://badge.fury.io/rb/transpec)
[![Build Status](https://travis-ci.org/yujinakayama/transpec.svg?branch=master&style=flat)](https://travis-ci.org/yujinakayama/transpec)
[![Coverage Status](https://coveralls.io/repos/yujinakayama/transpec/badge.svg?branch=master&service=github)](https://coveralls.io/github/yujinakayama/transpec?branch=master)
[![Code Climate](https://codeclimate.com/github/yujinakayama/transpec/badges/gpa.svg)](https://codeclimate.com/github/yujinakayama/transpec)

# Transpec

**Transpec** is a tool for converting your specs to the latest [RSpec](https://relishapp.com/rspec/) syntax with static and dynamic code analysis.

With Transpec you can upgrade your RSpec 2 specs to RSpec 3 in no time.
It supports [conversions](#supported-conversions) for almost all of the RSpec 3 changes – not only the `expect` syntax.
Also, you can use it on your RSpec 2 project even if you're not going to upgrade it to RSpec 3 for now.

Check out the following posts for the new RSpec syntax and the changes in RSpec 3:

* [RSpec's New Expectation Syntax](http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/)
* [RSpec's new message expectation syntax](http://www.teaisaweso.me/blog/2013/05/27/rspecs-new-message-expectation-syntax/)
* [Notable Changes in RSpec 3](http://rspec.info/blog/2014/05/notable-changes-in-rspec-3/)

If you are going to use Transpec in the upgrade process to RSpec 3,
read the RSpec official guide:

* https://relishapp.com/rspec/docs/upgrade

## Examples

Here's an example spec:

```ruby
describe Account do
  subject(:account) { Account.new(logger) }
  let(:logger) { mock('logger') }

  describe '#balance' do
    context 'initially' do
      it 'is zero' do
        account.balance.should == 0
      end
    end
  end

  describe '#close' do
    it 'logs an account closed message' do
      logger.should_receive(:account_closed).with(account)
      account.close
    end
  end

  describe '#renew' do
    context 'when the account is not closed' do
      before do
        account.stub(:closed?).and_return(false)
      end

      it 'does not raise error' do
        lambda { account.renew }.should_not raise_error(Account::RenewalError)
      end
    end
  end
end
```

Transpec would convert it to the following form:

```ruby
describe Account do
  subject(:account) { Account.new(logger) }
  let(:logger) { double('logger') }

  describe '#balance' do
    context 'initially' do
      it 'is zero' do
        expect(account.balance).to eq(0)
      end
    end
  end

  describe '#close' do
    it 'logs an account closed message' do
      expect(logger).to receive(:account_closed).with(account)
      account.close
    end
  end

  describe '#renew' do
    context 'when the account is not closed' do
      before do
        allow(account).to receive(:closed?).and_return(false)
      end

      it 'does not raise error' do
        expect { account.renew }.not_to raise_error
      end
    end
  end
end
```

### Actual examples

You can see actual conversion examples below:

* https://github.com/yujinakayama/guard/commit/transpec-demo
* https://github.com/yujinakayama/mail/commit/transpec-demo
* https://github.com/yujinakayama/twitter/commit/transpec-demo

## Installation

Simply install `transpec` with `gem` command:

```bash
$ gem install transpec
```

Normally you don't need to add `transpec` to your `Gemfile` or `*.gemspec` since this isn't a tool to be used daily.

## Basic Usage

Before converting your specs:

* Make sure your project has `rspec` gem dependency **2.14** or later. If not, change your `Gemfile` or `*.gemspec` to do so.
* Run `rspec` and check if all the specs pass.
* Ensure the Git repository is clean. (You don't want to mix up your changes and Transpec's changes, do you?)

Then, run `transpec` in the project root directory:

```bash
$ cd some-project
$ transpec
```

This will run the specs, convert them, and overwrite all spec files in the `spec` directory.

After the conversion, run `rspec` again and check whether everything is still green:

```bash
$ bundle exec rspec
```

If it's green, commit the changes with an auto-generated message
that describes the conversion summary and helps your team members to understand the new syntax:

```bash
$ git commit -aeF .git/COMMIT_EDITMSG
```

And you are done!

## Advanced Usage

### Convert only specific files

You can pass `transpec` arbitrary paths to convert:

```bash
# You always need to be in the project root directory
$ cd some-project

# Convert only files in `features` directory
$ transpec features

# Convert only files in `spec/foo` and `spec/bar` directory
$ transpec spec/foo spec/bar

# Convert only `spec/baz_spec.rb`
$ transpec spec/baz_spec.rb
```

Note that the current working directory always needs to be the project root directory,
so that Transpec can know where the root is.

### Enable/disable specific conversions

You can disable specific conversions that are enabled by default with `-k/--keep` option,
and enable conversions that are disabled by default with the `-v/--convert` option.

If you are willing to try the latest and modern syntax, run the following on RSpec 3:

```
$ transpec --convert example_group,hook_scope
```

See [`-k/--keep`](#-k--keep) and [`-v/--convert`](#-v--convert) for more details.

## Options

Though Transpec ships with sensible defaults that essentially conform to the RSpec 3 defaults,
you can customize the conversion behavior.

### `-f/--force`

Force processing even if the current Git repository is not clean.

```bash
$ git status --short
 M spec/spec_helper.rb
$ transpec
The current Git repository is not clean. Aborting. If you want to proceed forcibly, use -f/--force option.
$ transpec --force
Copying project for dynamic analysis...
Running dynamic analysis with command "bundle exec rspec"...
```

### `-c/--rspec-command`

Specify a command to run your specs which is used for dynamic analysis.

Transpec needs to run your specs in a copied project directory for dynamic analysis.
If your project requires some special setup or commands to run specs, use this option.
`bundle exec rspec` is used by default.

Note that the command to run dynamic analysis does _not_ affect to the files or specs to be converted.
This means that even if you specify a command that only runs a subset of the files in your spec suite or a subset of the specs in a file, every spec will be converted.
For this reason, it's recommended to provide a command that runs full spec suite to `-c/--rspec-command`.
If you want to convert only a subset of the files in a spec suite, pass the paths to `transpec`.
See [Advanced Usage](#advanced-usage) for more details.

You can change the temporary directory that the your project will be copied
by specifying the `TMPDIR` environment variable.

```bash
$ transpec --rspec-command "./special_setup.sh && bundle exec rspec"
```

### `-k/--keep`

Keep specific syntaxes by disabling conversions.

```bash
$ transpec --keep should_receive,stub
```

#### Conversions enabled by default

Note that some syntaxes are available only if your project's RSpec is specific version or later.
If they are unavailable, conversions for such syntaxes will be disabled automatically.

Type             | Target Syntax                  | Converted Syntax
-----------------|--------------------------------|-------------------------------------------
`should`         | `obj.should matcher`           | `expect(obj).to matcher`
`oneliner`       | `it { should ... }`            | `it { is_expected.to ... }`
`should_receive` | `obj.should_receive(:message)` | `expect(obj).to receive(:message)`
`stub`           | `obj.stub(:message)`           | `allow(obj).to receive(:message)`
`have_items`     | `expect(obj).to have(n).items` | `expect(obj.size).to eq(n)`
`its`            | `its(:attr) { }`               | `describe '#attr' { subject { }; it { } }`
`pending`        | `pending 'is an example' { }`  | `skip 'is an example' { }`
`deprecated`     | All other deprecated syntaxes  | Latest syntaxes

See [Supported Conversions](#supported-conversions) for more details.


### `-v/--convert`

Enable specific conversions that are disabled by default.

```bash
$ transpec --convert example_group
```

#### Conversions disabled by default

Most of these target syntaxes are _not_ deprecated in both RSpec 2 and 3,
but the new syntaxes provide more modern and clear ways.

Type             | Target Syntax                  | Converted Syntax
-----------------|--------------------------------|----------------------------------------------------
`example_group`  | `describe 'something' { }`     | `RSpec.describe 'something' { }`
`hook_scope`     | `before(:all) { }`             | `before(:context) { }`
`stub_with_hash` | `obj.stub(:message => value)`  | `allow(obj).to receive(:message).and_return(value)`

Note: Specifying `stub_with_hash` enables conversion of `obj.stub(:message => value)`
to `allow(obj).to receive(:message).and_return(value)`
when `allow(obj).to receive_messages(:message => value)` is unavailable (prior to RSpec 3.0),
and it will be converted to multiple statements if the hash includes multiple pairs.
If your project's RSpec is 3.0 or later, it will be converted to `receive_messages(:message => value)`
regardless of this option.

See [Supported Conversions - Method stubs with a hash argument](#method-stubs-with-a-hash-argument) for more details.

### `-o/--convert-only`

Convert specific syntaxes while keeping all other syntaxes.

This option would be useful when you want to convert a non-deprecated syntax
while keeping another syntax that would be converted by default.
(e.g. converting the hook scope aliases while keeping the one-liner `should`).

```bash
$ transpec --convert-only example_group,hook_scope
```

### `-s/--skip-dynamic-analysis`

Skip dynamic analysis and convert with only static analysis.
The use of this option is basically **discouraged**
since it significantly decreases the overall conversion accuracy.

This would be useful only if your spec suite takes really long (like an hour) to run
and you prefer a combination of the rough but fast conversion by Transpec and manual fixes after that.

### `-n/--negative-form`

Specify a negative form of `to` which is used in the `expect` syntax.
Either `not_to` or `to_not`.
`not_to` is used by default.

```bash
$ transpec --negative-form to_not
```

### `-b/--boolean-matcher`

Specify a boolean matcher type which `be_true` and `be_false` will be converted to.
Any of `truthy,falsey`, `truthy,falsy` or `true,false` can be specified.
`truthy,falsey` is used by default.

```bash
$ transpec --boolean-matcher true,false
```

See [Supported Conversions - Boolean matchers](#boolean-matchers) for more details.

### `-e/--explicit-spec-type`

Add explicit spec `:type` metadata to example groups in a project using rspec-rails.

See [Supported Conversions - Implicit spec types in rspec-rails](#implicit-spec-types-in-rspec-rails) for more details.

### `-a/--no-yield-any-instance`

Suppress yielding receiver instances to `any_instance` implementation blocks as the first block argument.

By default in RSpec 3, `any_instance` implementation blocks will be yielded the receiving
instance as the first block argument, and by default Transpec converts specs by adding instance arguments to the blocks so that they conform to the behavior of RSpec 3.
Specifying this option suppresses the conversion and keeps them compatible with RSpec 2.
Note that this is not same as `--keep deprecated` since this configures `yield_receiver_to_any_instance_implementation_blocks` with `RSpec.configure`.

See [Supported Conversions - `any_instance` implementation blocks](#any_instance-implementation-blocks) for more details.

### `-p/--no-parens-matcher-arg`

Suppress parenthesizing arguments of matchers when converting
`should` with operator matcher to `expect` with non-operator matcher
(the `expect` syntax does not directly support the operator matchers).
Note that it will be parenthesized even if this option is specified
when parentheses are necessary to keep the meaning of the expression.

```ruby
describe 'original spec' do
  it 'is an example' do
    1.should == 1
    2.should > 1
    'string'.should =~ /^str/
    [1, 2, 3].should =~ [2, 1, 3]
    { key: value }.should == { key: value }
  end
end

describe 'converted spec' do
  it 'is an example' do
    expect(1).to eq(1)
    expect(2).to be > 1
    expect('string').to match(/^str/)
    expect([1, 2, 3]).to match_array([2, 1, 3])
    expect({ key: value }).to eq({ key: value })
  end
end

describe 'converted spec with -p/--no-parens-matcher-arg option' do
  it 'is an example' do
    expect(1).to eq 1
    expect(2).to be > 1
    expect('string').to match /^str/
    expect([1, 2, 3]).to match_array [2, 1, 3]
    # With non-operator method, the parentheses are always required
    # to prevent the hash from being interpreted as a block.
    expect({ key: value }).to eq({ key: value })
  end
end
```

## Inconvertible Specs

You might see the following warning while conversion:

```
Cannot convert #should into #expect since #expect is not available in the context.
spec/awesome_spec.rb:4:      1.should == 1
```

This message would be shown with specs like:

```ruby
describe '#should that cannot be converted to #expect' do
  class MyAwesomeTestRunner
    def run
      1.should == 1
    end
  end

  it 'is 1' do
    test_runner = MyAwesomeTestRunner.new
    test_runner.run
  end
end
```

### Reason

* `should` is defined on `BasicObject` class, so you can use `should` everywhere.
* `expect` is defined on `RSpec::Matchers` module which is included by `RSpec::Core::ExampleGroup` class, so you can use `expect` only where `self` is an instance of `RSpec::Core::ExampleGroup` (i.e. in `it` blocks, `:each` hook blocks or included module methods) or other classes that explicitly include `RSpec::Matchers`.

With the above example, in the context of `1.should == 1`, the `self` is an instance of `MyAwesomeTestRunner`.
Transpec tracks contexts and skips conversion if the syntax cannot be converted in a case like this.

### Solution

Include or extend any of the following module to make RSpec syntax available in the context:

* `RSpec::Matchers` for `expect(obj).to some_matcher`
* `RSpec::Mocks::ExampleMethods` for `expect/allow(obj).to receive(:message)`

```ruby
  class MyAwesomeTestRunner
    include RSpec::Matchers

    def run
      1.should == 1
    end
  end
```

Then run `transpec` again.

## Two Types of `should`

There are two types of `should`:

```ruby
describe 'the monkey-patched should' do
  subject { [] }

  it 'is empty' do
    subject.should be_empty
    #       ^^^^^^ BasicObject#should in RSpec 2.11 or later,
    #                or Kernel#should prior to RSpec 2.11.
  end
end

describe 'the one-liner should' do
  subject { [] }

  it { should be_empty }
  #    ^^^^^^ RSpec::Core::ExampleGroup#should
end
```

The monkey-patched `obj.should`:

* Is defined on `BasicObject` (or `Kernel`) and provided by `rspec-expectations` gem.
* Is deprecated in RSpec 3.
* Has [the issue](http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/#delegation-issues) with delegate/proxy objects.
* There's the alternative syntax [`expect(obj).to`](#standard-expectations) since RSpec 2.11.

The one-liner (implicit receiver) `should`:

* Is defined on `RSpec::Core::ExampleGroup` and provided by `rspec-core` gem.
* Is _not_ deprecated in RSpec 3.
* Does _not_ have the issue with delegate/proxy objects.
* There's the alternative syntax [`is_expected.to`](#one-liner-expectations) since RSpec 2.99.beta2.

## Supported Conversions

* [Standard expectations](#standard-expectations)
* [One-liner expectations](#one-liner-expectations)
* [Operator matchers](#operator-matchers)
* [Boolean matchers](#boolean-matchers)
* [`be_close` matcher](#be_close-matcher)
* [`have(n).items` matcher](#havenitems-matcher)
* [One-liner expectations with `have(n).items` matcher](#one-liner-expectations-with-havenitems-matcher)
* [Expectations on block](#expectations-on-block)
* [Expectations on attribute of subject with `its`](#expectations-on-attribute-of-subject-with-its)
* [Negative error expectations with specific error](#negative-error-expectations-with-specific-error)
* [Message expectations](#message-expectations)
* [Message expectations that are actually method stubs](#message-expectations-that-are-actually-method-stubs)
* [Method stubs](#method-stubs)
* [Method stubs with a hash argument](#method-stubs-with-a-hash-argument)
* [Method stub aliases](#method-stub-aliases)
* [Method stubs with deprecated specification of number of times](#method-stubs-with-deprecated-specification-of-number-of-times)
* [Useless `and_return`](#useless-and_return)
* [`any_instance` implementation blocks](#any_instance-implementation-blocks)
* [Test double aliases](#test-double-aliases)
* [Pending examples](#pending-examples)
* [Current example object](#current-example-object)
* [Custom matcher DSL](#custom-matcher-dsl)
* [Implicit spec types in rspec-rails](#implicit-spec-types-in-rspec-rails)
* [Deprecated configuration options](#deprecated-configuration-options)
* [Monkey-patched example groups](#monkey-patched-example-groups)
* [Hook scope aliases](#hook-scope-aliases)

### Standard expectations

Targets:

```ruby
obj.should matcher
obj.should_not matcher
```

Will be converted to:

```ruby
expect(obj).to matcher
expect(obj).not_to matcher
expect(obj).to_not matcher # with `--negative-form to_not`
```

* This conversion can be disabled by: `--keep should`
* Deprecation: deprecated since RSpec 3.0
* See also: [RSpec's New Expectation Syntax](http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/)

### One-liner expectations

This conversion is available only if your project's RSpec is **2.99.0.beta2 or later**.

Targets:

```ruby
it { should matcher }
it { should_not matcher }
```

Will be converted to:

```ruby
it { is_expected.to matcher }
it { is_expected.not_to matcher }
it { is_expected.to_not matcher } # with `--negative-form to_not`
```

`is_expected.to` is designed for the consistency with the `expect` syntax.
However the one-liner `should` is still _not_ deprecated in RSpec 3.0
and available even if the `should` syntax is
[disabled with `RSpec.configure`](https://www.relishapp.com/rspec/rspec-expectations/v/3-0/docs/syntax-configuration#disable-should-syntax).
So if you think `is_expected.to` is verbose,
feel free to disable this conversion and continue using the one-liner `should`.
See [Two Types of `should`](#two-types-of-should) also.

* This conversion can be disabled by: `--keep oneliner`
* Deprecation: not deprecated
* See also: [Add `is_expected` for expect-based one-liner syntax. by myronmarston · rspec/rspec-core](https://github.com/rspec/rspec-core/pull/1180)

### Operator matchers

Targets:

```ruby
1.should == 1
1.should < 2
Integer.should === 1
'string'.should =~ /^str/
[1, 2, 3].should =~ [2, 1, 3]
```

Will be converted to:

```ruby
expect(1).to eq(1)
expect(1).to be < 2
expect(Integer).to be === 1
expect('string').to match(/^str/)
expect([1, 2, 3]).to match_array([2, 1, 3])
```

This conversion is combined with the conversion of [standard expectations](#standard-expecatations) and cannot be disabled separately because the `expect` syntax does not directly support the operator matchers.

* See also: [(Almost) All Matchers Are Supported - RSpec's New Expectation Syntax](http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/#almost-all-matchers-are-supported)

### Boolean matchers

This conversion is available only if your project's RSpec is **2.99.0.beta1 or later**.

Targets:

```ruby
expect(obj).to be_true
expect(obj).to be_false
```

Will be converted to:

```ruby
expect(obj).to be_truthy
expect(obj).to be_falsey

# With `--boolean-matcher truthy,falsy`
# be_falsy is just an alias of be_falsey.
expect(obj).to be_truthy
expect(obj).to be_falsy

# With `--boolean-matcher true,false`
expect(obj).to be true
expect(obj).to be false
```

* `be_true` matcher passes if expectation subject is _truthy_ in conditional semantics. (i.e. all objects except `false` and `nil`)
* `be_false` matcher passes if expectation subject is _falsey_ in conditional semantics. (i.e. `false` or `nil`)
* `be_truthy` and `be_falsey` matchers are renamed version of `be_true` and `be_false` and their behaviors are same.
* `be true` and `be false` are not new things. These are combinations of `be` matcher and boolean literals. These pass if expectation subject is exactly equal to boolean value.

So, converting `be_true`/`be_false` to `be_truthy`/`be_falsey` never breaks your specs and this is Transpec's default. If you are willing to test boolean values strictly, you can convert them to `be true`/`be false` with `--boolean-matcher true,false` option. Note that this may break your specs if your application code don't return exact boolean values.

* This conversion can be disabled by: `--keep deprecated`
* Deprecation: deprecated since RSpec 2.99, removed in RSpec 3.0
* See also: [Consider renaming `be_true` and `be_false` to `be_truthy` and `be_falsey` · rspec/rspec-expectations](https://github.com/rspec/rspec-expectations/issues/283)

### `be_close` matcher

Targets:

```ruby
expect(1.0 / 3.0).to be_close(0.333, 0.001)
```

Will be converted to:

```ruby
expect(1.0 / 3.0).to be_within(0.001).of(0.333)
```

* This conversion can be disabled by: `--keep deprecated`
* Deprecation: deprecated since RSpec 2.1, removed in RSpec 3.0
* See also: [New be within matcher and RSpec.deprecate fix · rspec/rspec-expectations](https://github.com/rspec/rspec-expectations/pull/32)

### `have(n).items` matcher

This conversion will be **disabled automatically if `rspec-collection_matchers` is loaded** in your spec.

Targets:

```ruby
expect(collection).to have(3).items
expect(collection).to have_exactly(3).items
expect(collection).to have_at_least(3).items
expect(collection).to have_at_most(3).items

collection.should have(3).items

# Assume `team` responds to #players.
expect(team).to have(3).players

# Assume #players is a private method.
expect(team).to have(3).players

# Validation expectations in rspec-rails.
expect(model).to have(2).errors_on(:name)
```

Will be converted to:

```ruby
expect(collection.size).to eq(3)
expect(collection.size).to eq(3)
expect(collection.size).to be >= 3
expect(collection.size).to be <= 3

 # With `--keep should`
collection.size.should == 3

expect(team.players.size).to eq(3)

# have(n).items matcher invokes #players even if it's a private method.
expect(team.send(:players).size).to eq(3)

# Conversion of `have(n).errors_on(:attr)` is not supported.
expect(model).to have(2).errors_on(:name)
```

There's an option to continue using `have(n).items` matcher with [rspec-collection_matchers](https://github.com/rspec/rspec-collection_matchers) which is a gem extracted from `rspec-expectations`.
If you choose to do so, disable this conversion by either:

* Specify `--keep have_items` option manually.
* Require `rspec-collection_matchers` in your spec so that Transpec automatically disables this conversion.

#### Note about `expect(model).to have(n).errors_on(:attr)`

The idiom `expect(model).to have(n).errors_on(:attr)` in rspec-rails 2 consists of
`have(n).items` matcher and a monkey-patch [`ActiveModel::Validations#errors_on`](https://github.com/rspec/rspec-rails/blob/v2.14.2/lib/rspec/rails/extensions/active_record/base.rb#L34-L57).
In RSpec 2 the monkey-patch was provided by rspec-rails,
but in RSpec 3 it's extracted to rspec-collection_matchers along with `have(n).items` matcher.
So if you convert it to `expect(model.errors_on(:attr).size).to eq(2)` without rspec-collection_matchers,
it fails with error `undefined method 'error_on' for #<Model ...>`.

Technically it can be converted to:

```ruby
model.valid?
expect(model.errors[:attr].size).to eq(n)
```

However currently Transpec doesn't support this conversion
since this is probably not what most people want.
So using rspec-collection_matchers gem is recommended for now.

* This conversion can be disabled by: `--keep have_items`
* Deprecation: deprecated since RSpec 2.99, removed in RSpec 3.0
* See also: [Expectations: `have(x).items` matchers will be moved into an external gem - The Plan for RSpec 3](http://rspec.info/blog/2013/07/the-plan-for-rspec-3/#expectations-havexitems-matchers-will-be-moved-into-an-external-gem)

### One-liner expectations with `have(n).items` matcher

This conversion will be **disabled automatically if `rspec-collection_matchers` is loaded** in your spec.

Targets:

```ruby
it { should have(3).items }
it { should have_at_least(3).players }
```

Will be converted to:

```ruby
it 'has 3 items' do
  expect(subject.size).to eq(3)
end

# With `--keep should`
it 'has 3 items' do
  subject.size.should == 3
end

it 'has at least 3 players' do
  expect(subject.players.size).to be >= 3
end
```

* This conversion can be disabled by: `--keep have_items`

### Expectations on block

Targets:

```ruby
lambda { do_something }.should raise_error
proc { do_something }.should raise_error
-> { do_something }.should raise_error
expect { do_something }.should raise_error
```

Will be converted to:

```ruby
expect { do_something }.to raise_error
```

* This conversion can be disabled by: `--keep should`
* Deprecation: deprecated since RSpec 3.0
* See also: [Unification of Block vs. Value Syntaxes - RSpec's New Expectation Syntax](http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/#unification-of-block-vs-value-syntaxes)

### Expectations on attribute of subject with `its`

This conversion will be **disabled automatically if `rspec-its` is loaded** in your spec.

Targets:

```ruby
describe 'example' do
  subject { { foo: 1, bar: 2 } }
  its(:size) { should == 2 }
  its([:foo]) { should == 1 }
  its('keys.first') { should == :foo }
end
```

Will be converted to:

```ruby
describe 'example' do
  subject { { foo: 1, bar: 2 } }

  describe '#size' do
    subject { super().size }
    it { should == 2 }
  end

  describe '[:foo]' do
    subject { super()[:foo] }
    it { should == 1 }
  end

  describe '#keys' do
    subject { super().keys }
    describe '#first' do
      subject { super().first }
      it { should == :foo }
    end
  end
end
```

There's an option to continue using `its` with [rspec-its](https://github.com/rspec/rspec-its) which is a gem extracted from `rspec-core`.
If you choose to do so, disable this conversion by either:

* Specify `--keep its` option manually.
* Require `rspec-its` in your spec so that Transpec automatically disables this conversion.

Note that this conversion is a sort of first-aid
and ideally the expectations should be rewritten to be more expressive by yourself.
Read [this post](https://gist.github.com/myronmarston/4503509) for the rationale.

* This conversion can be disabled by: `--keep its`
* Deprecation: deprecated since RSpec 2.99, removed in RSpec 3.0
* See also: [Core: `its` will be moved into an external gem - The Plan for RSpec 3](http://rspec.info/blog/2013/07/the-plan-for-rspec-3/#core-its-will-be-moved-into-an-external-gem)

### Negative error expectations with specific error

Targets:

```ruby
expect { do_something }.not_to raise_error(SomeErrorClass)
expect { do_something }.not_to raise_error('message')
expect { do_something }.not_to raise_error(SomeErrorClass, 'message')
lambda { do_something }.should_not raise_error(SomeErrorClass)
```

Will be converted to:

```ruby
expect { do_something }.not_to raise_error
lambda { do_something }.should_not raise_error # with `--keep should`
```

* This conversion can be disabled by: `--keep deprecated`
* Deprecation: deprecated since RSpec 2.14, removed in RSpec 3.0
* See also: [Consider deprecating `expect { }.not_to raise_error(SpecificErrorClass)` · rspec/rspec-expectations](https://github.com/rspec/rspec-expectations/issues/231)

### Message expectations

Targets:

```ruby
obj.should_receive(:message)
Klass.any_instance.should_receive(:message)
```

Will be converted to:

```ruby
expect(obj).to receive(:message)
expect_any_instance_of(Klass).to receive(:message)
```

* This conversion can be disabled by: `--keep should_receive`
* Deprecation: deprecated since RSpec 3.0
* See also: [RSpec's new message expectation syntax](http://www.teaisaweso.me/blog/2013/05/27/rspecs-new-message-expectation-syntax/)

### Message expectations that are actually method stubs

Targets:

```ruby
obj.should_receive(:message).any_number_of_times
obj.should_receive(:message).at_least(0)

Klass.any_instance.should_receive(:message).any_number_of_times
Klass.any_instance.should_receive(:message).at_least(0)
```

Will be converted to:

```ruby
allow(obj).to receive(:message)
obj.stub(:message) # with `--keep stub`

allow_any_instance_of(Klass).to receive(:message)
Klass.any_instance.stub(:message) # with `--keep stub`
```

* This conversion can be disabled by: `--keep deprecated`
* Deprecation: deprecated since RSpec 2.14, removed in RSpec 3.0
* See also: [Don't allow at_least(0) · rspec/rspec-mocks](https://github.com/rspec/rspec-mocks/issues/133)

### Method stubs

Targets:

```ruby
obj.stub(:message)
obj.stub!(:message)

obj.stub_chain(:foo, :bar, :baz)

Klass.any_instance.stub(:message)

obj.unstub(:message)
obj.unstub!(:message)
```

Will be converted to:

```ruby
allow(obj).to receive(:message)

# Conversion from `stub_chain` to `receive_message_chain` is available
# only if the target project's RSpec is 3.0.0.beta2 or later
allow(obj).to receive_message_chain(:foo, :bar, :baz)

allow_any_instance_of(Klass).to receive(:message)

allow(obj).to receive(:message).and_call_original
```

* This conversion can be disabled by: `--keep stub`
* Deprecation: deprecated since RSpec 3.0
* See also:
    * [RSpec's new message expectation syntax](http://www.teaisaweso.me/blog/2013/05/27/rspecs-new-message-expectation-syntax/)
    * [Bring back stub_chain (receive_message_chain) · rspec/rspec-mocks](https://github.com/rspec/rspec-mocks/issues/464)

### Method stubs with a hash argument

Targets:

```ruby
obj.stub(:foo => 1, :bar => 2)
```

Will be converted to:

```ruby
# If the target project's RSpec is 3.0.0.beta1 or later
allow(obj).to receive_messages(:foo => 1, :bar => 2)

# If the target project's RSpec is prior to 3.0.0.beta1
obj.stub(:foo => 1, :bar => 2) # No conversion

# If the target project's RSpec is prior to 3.0.0.beta1
# and `--convert stub-with-hash` is specified
allow(obj).to receive(:foo).and_return(1)
allow(obj).to receive(:bar).and_return(2)
```

`allow(obj).to receive_messages(:foo => 1, :bar => 2)` which is designed to be the replacement for `obj.stub(:foo => 1, :bar => 2)` is available from RSpec 3.0.

So, if you're going to use Transpec in [the upgrade path to RSpec 3](http://rspec.info/blog/2013/07/the-plan-for-rspec-3/#the-upgrade-path), you may need to follow these steps:

1. Upgrade to RSpec 2.99
2. Run `transpec` (at this time `obj.stub(:message => value)` won't be converted)
3. Upgrade to RSpec 3.0
4. Run `transpec` again to convert `obj.stub(:message => value)`

Or if you're going to stay RSpec 2.14 for now but want to convert all `stub` to `allow` statements, run `transpec` with `--convert stub_with_hash` option. Note that once the conversion is done, multiple statements cannot be merged into a `receive_messages`.

* This conversion can be disabled by: `--keep stub`
* Deprecation: deprecated since RSpec 3.0
* See also: [allow receive with multiple methods · rspec/rspec-mocks](https://github.com/rspec/rspec-mocks/issues/368)

### Method stub aliases

Targets:

```ruby
obj.stub!(:message)
obj.unstub!(:message)
```

Will be converted to:

```ruby
# With `--keep stub`
obj.stub(:message)
obj.unstub(:message)
```

* This conversion can be disabled by: `--keep deprecated`
* Deprecation: deprecated since RSpec 2.14, removed in RSpec 3.0
* See also: [Consider deprecating and/or removing #stub! and #unstub! at some point · rspec/rspec-mocks](https://github.com/rspec/rspec-mocks/issues/122)

### Method stubs with deprecated specification of number of times

Targets:

```ruby
obj.stub(:message).any_number_of_times
obj.stub(:message).at_least(0)
```

Will be converted to:

```ruby
allow(obj).to receive(:message)
obj.stub(:message) # with `--keep stub`
```

* This conversion can be disabled by: `--keep deprecated`
* Deprecation: deprecated since RSpec 2.14, removed in RSpec 3.0
* See also: [Don't allow at_least(0) · rspec/rspec-mocks](https://github.com/rspec/rspec-mocks/issues/133)

### Useless `and_return`

Targets:

```ruby
expect(obj).to receive(:message).and_return { 1 }
allow(obj).to receive(:message).and_return { 1 }

expect(obj).to receive(:message).and_return
allow(obj).to receive(:message).and_return
```

Will be converted to:

```ruby
expect(obj).to receive(:message) { 1 }
allow(obj).to receive(:message) { 1 }

expect(obj).to receive(:message)
allow(obj).to receive(:message)
```

* This conversion can be disabled by: `--keep deprecated`
* Deprecation: deprecated since RSpec 2.99, removed in RSpec 3.0
* See also: [Consider deprecating `and_return { value }` · rspec/rspec-mocks](https://github.com/rspec/rspec-mocks/issues/558)

### `any_instance` implementation blocks

This conversion is available only if your project's RSpec is **`>= 2.99.0.beta1` and `< 3.0.0.beta1`**.

Targets:

```ruby
RSpec.configure do |rspec|
end

describe 'example' do
  it 'is any_instance implementation block' do
    expect_any_instance_of(Klass).to receive(:message) { |arg| puts arg }
    allow_any_instance_of(Klass).to receive(:message) { |arg| puts arg }
  end
end
```

Will be converted to:

```ruby
RSpec.configure do |rspec|
  rspec.mock_with :rspec do |mocks|
    # In RSpec 3, `any_instance` implementation blocks will be yielded the receiving
    # instance as the first block argument to allow the implementation block to use
    # the state of the receiver.
    # In RSpec 2.99, to maintain compatibility with RSpec 3 you need to either set
    # this config option to `false` OR set this to `true` and update your
    # `any_instance` implementation blocks to account for the first block argument
    # being the receiving instance.
    mocks.yield_receiver_to_any_instance_implementation_blocks = true
  end
end

describe 'example' do
  it 'is any_instance implementation block' do
    expect_any_instance_of(Klass).to receive(:message) { |instance, arg| puts arg }
    allow_any_instance_of(Klass).to receive(:message) { |instance, arg| puts arg }
  end
end
```

Or with `--no-yield-any-instance` option they will be converted to:

```ruby
RSpec.configure do |rspec|
  rspec.mock_with :rspec do |mocks|
    # In RSpec 3, `any_instance` implementation blocks will be yielded the receiving
    # instance as the first block argument to allow the implementation block to use
    # the state of the receiver.
    # In RSpec 2.99, to maintain compatibility with RSpec 3 you need to either set
    # this config option to `false` OR set this to `true` and update your
    # `any_instance` implementation blocks to account for the first block argument
    # being the receiving instance.
    mocks.yield_receiver_to_any_instance_implementation_blocks = false
  end
end

describe 'example' do
  it 'is any_instance implementation block' do
    expect_any_instance_of(Klass).to receive(:message) { |arg| puts arg }
    allow_any_instance_of(Klass).to receive(:message) { |arg| puts arg }
  end
end
```

* This conversion can be disabled by: `--keep deprecated`
* Deprecation: deprecated since RSpec 2.99
* See also: [Mocks: `any_instance` block implementations will yield the receiver](http://rspec.info/blog/2013/07/the-plan-for-rspec-3/#mocks-anyinstance-block-implementations-will-yield-the-receiver)

### Test double aliases

Targets:

```ruby
stub('something')
mock('something')
```

Will be converted to:

```ruby
double('something')
```

* This conversion can be disabled by: `--keep deprecated`
* Deprecation: deprecated since RSpec 2.14, removed in RSpec 3.0
* See also: [myronmarston / why_double.md - Gist](https://gist.github.com/myronmarston/6576665)

### Pending examples

This conversion is available only if your project's RSpec is **`>= 2.99.0.beta1` and `< 3.0.0.beta1`**.

Targets:

```ruby
describe 'example' do
  it 'is skipped', :pending => true do
    do_something_possibly_fail # This won't be run
  end

  pending 'is skipped' do
    do_something_possibly_fail # This won't be run
  end

  it 'is skipped' do
    pending
    do_something_possibly_fail # This won't be run
  end

  it 'is run and expected to fail' do
    pending do
      do_something_surely_fail # This will be run and expected to fail
    end
  end
end
```

Will be converted to:

```ruby
describe 'example' do
  it 'is skipped', :skip => true do
    do_something_possibly_fail # This won't be run
  end

  skip 'is skipped' do
    do_something_possibly_fail # This won't be run
  end

  it 'is skipped' do
    skip
    do_something_possibly_fail # This won't be run
  end

  it 'is run and expected to fail' do
    pending # #pending with block is no longer supported
    do_something_surely_fail # This will be run and expected to fail
  end
end
```

Here's an excerpt from [the warning](https://github.com/rspec/rspec-core/blob/v2.99.0.beta2/lib/rspec/core/example_group.rb#L67-L75) for pending examples in RSpec 2.99:

> The semantics of `RSpec::Core::ExampleGroup#pending` are changing in RSpec 3.
> In RSpec 2.x, it caused the example to be skipped. In RSpec 3, the example will
> still be run but is expected to fail, and will be marked as a failure (rather
> than as pending) if the example passes, just like how `pending` with a block
> from within an example already works.
>
> To keep the same skip semantics, change `pending` to `skip`.  Otherwise, if you
> want the new RSpec 3 behavior, you can safely ignore this warning and continue
> to upgrade to RSpec 3 without addressing it.

* This conversion can be disabled by: `--keep pending`
* Deprecation: not deprecated but the behavior changes in RSpec 3.0
* See also: [Feature request: shortcut for pending-block within it · rspec/rspec-core](https://github.com/rspec/rspec-core/issues/1208)

### Current example object

This conversion is available only if your project's RSpec is **2.99.0.beta1 or later**.

Targets:

```ruby
module ScreenshotHelper
  def save_failure_screenshot
    return unless example.exception
    # ...
  end
end

describe 'example page' do
  include ScreenshotHelper
  after { save_failure_screenshot }
  let(:user) { User.find(example.metadata[:user_id]) }
  # ...
end
```

Will be converted to:

```ruby
module ScreenshotHelper
  def save_failure_screenshot
    return unless RSpec.current_example.exception
    # ...
  end
end

describe 'example page' do
  include ScreenshotHelper
  after { save_failure_screenshot }
  let(:user) { |example| User.find(example.metadata[:user_id]) }
  # ...
end
```

Here's an excerpt from [the warning](https://github.com/rspec/rspec-core/blob/7d6d2ca/lib/rspec/core/example_group.rb#L513-L527) for `RSpec::Core::ExampleGroup#example` and `#running_example` in RSpec 2.99:

> `RSpec::Core::ExampleGroup#example` is deprecated and will be removed in RSpec 3. There are a few options for what you can use instead:
>
> - `rspec-core`'s DSL methods (`it`, `before`, `after`, `let`, `subject`, etc) now yield the example as a block argument, and that is the recommended way to access the current example from those contexts.
> - The current example is now exposed via `RSpec.current_example`, which is accessible from any context.
> - If you can't update the code at this call site (e.g. because it is in an extension gem), you can use this snippet to continue making this method available in RSpec 2.99 and RSpec 3:
>
> ```ruby
> RSpec.configure do |c|
>   c.expose_current_running_example_as :example
> end
> ```

* This conversion can be disabled by: `--keep deprecated`
* Deprecation: deprecated since RSpec 2.99, removed in RSpec 3.0
* See also: [Core: DSL methods will yield the example - The Plan for RSpec 3](http://rspec.info/blog/2013/07/the-plan-for-rspec-3/#core-dsl-methods-will-yield-the-example)

### Custom matcher DSL

This conversion is available only if your project's RSpec is **3.0.0.beta2 or later**.

Targets:

```ruby
RSpec::Matchers.define :be_awesome do
  match_for_should { }
  match_for_should_not { }
  failure_message_for_should { }
  failure_message_for_should_not { }
end
```

Will be converted to:

```ruby
RSpec::Matchers.define :be_awesome do
  match { }
  match_when_negated { }
  failure_message { }
  failure_message_when_negated { }
end
```

* This conversion can be disabled by: `--keep deprecated`
* Deprecation: deprecated since RSpec 3.0
* See also: [Expectations: Matcher protocol and custom matcher API changes - The Plan for RSpec 3](http://rspec.info/blog/2013/07/the-plan-for-rspec-3/#expectations-matcher-protocol-and-custom-matcher-api-changes)

### Implicit spec types in rspec-rails

This conversion is **available only if `rspec-rails` is loaded** in your spec and your project's RSpec is **2.99.0.rc1 or later**.

Targets:

```ruby
# In spec/models/some_model_spec.rb
RSpec.configure do |rspec|
end

describe SomeModel do
end
```

Will be converted to:

```ruby
RSpec.configure do |rspec|
  # rspec-rails 3 will no longer automatically infer an example group's spec type
  # from the file location. You can explicitly opt-in to the feature using this
  # config option.
  # To explicitly tag specs without using automatic inference, set the `:type`
  # metadata manually:
  #
  #     describe ThingsController, :type => :controller do
  #       # Equivalent to being in spec/controllers
  #     end
  rspec.infer_spec_type_from_file_location!
end

describe SomeModel do
end
```

Or with `--explicit-spec-type` option they will be converted to:

```ruby
RSpec.configure do |rspec|
end

describe SomeModel, :type => :model do
end
```

* This conversion can be disabled by: `--keep deprecated`
* Deprecation: deprecated since RSpec 2.99, removed in RSpec 3.0
* See also: [Consider making example group mixins more explicit · rspec/rspec-rails](https://github.com/rspec/rspec-rails/issues/662)

### Deprecated configuration options

Targets:

```ruby
RSpec.configure do |c|
  c.backtrace_clean_patterns
  c.backtrace_clean_patterns = [/lib\/something/]
  c.color_enabled = true

  c.out
  c.out = File.open('output.txt', 'w')
  c.output
  c.output = File.open('output.txt', 'w')

  c.backtrace_cleaner
  c.color?(output)
  c.filename_pattern
  c.filename_pattern = '**/*_test.rb'
  c.warnings
end
```

Will be converted to:

```ruby
RSpec.configure do |c|
  c.backtrace_exclusion_patterns
  c.backtrace_exclusion_patterns = [/lib\/something/]
  c.color = true

  # RSpec 2.99.0.beta1 or later
  c.output_stream
  c.output_stream = File.open('output.txt', 'w')
  c.output_stream
  c.output_stream = File.open('output.txt', 'w')

  # RSpec 2.99.0.rc1 or later
  c.backtrace_formatter
  c.color_enabled?(output)
  c.pattern
  c.pattern = '**/*_test.rb'
  c.warnings?
end
```

* This conversion can be disabled by: `--keep deprecated`

### Monkey-patched example groups

This conversion is **disabled by default** and available only if your project's RSpec is **3.0.0.beta2 or later**.

Targets:

```ruby
RSpec.configure do |rspec|
end

describe 'top-level example group' do
  describe 'nested example group' do
  end
end

shared_examples 'shared examples' do
end
```

Will be converted to:

```ruby
RSpec.configure do |rspec|
  # Setting this config option `false` removes rspec-core's monkey patching of the
  # top level methods like `describe`, `shared_examples_for` and `shared_context`
  # on `main` and `Module`. The methods are always available through the `RSpec`
  # module like `RSpec.describe` regardless of this setting.
  # For backwards compatibility this defaults to `true`.
  #
  # https://relishapp.com/rspec/rspec-core/v/3-0/docs/configuration/global-namespace-dsl
  rspec.expose_dsl_globally = false
end

RSpec.describe 'top-level example group' do
  describe 'nested example group' do
  end
end

RSpec.shared_examples 'shared examples' do
end
```

* This conversion can be enabled by: `--convert example_group`
* Deprecation: not deprecated
* See also: [Zero Monkey Patching Mode! - The Plan for RSpec 3](http://rspec.info/blog/2013/07/the-plan-for-rspec-3/#zero-monkey-patching-mode)

### Hook scope aliases

This conversion is **disabled by default** and available only if your project's RSpec is **3.0.0.beta2 or later**.

Targets:

```ruby
describe 'example' do
  before { do_something }
  before(:each) { do_something }
  before(:all) { do_something }
end

RSpec.configure do |rspec|
  rspec.before(:suite) { do_something }
end
```

Will be converted to:

```ruby
describe 'example' do
  before { do_something }
  before(:example) { do_something }
  before(:context) { do_something }
end

RSpec.configure do |rspec|
  rspec.before(:suite) { do_something }
end
```

* This conversion can be enabled by: `--convert hook_scope`
* Deprecation: not deprecated
* See also: [Adds hook scope aliases `example` and `context` · rspec/rspec-core](https://github.com/rspec/rspec-core/pull/1174)

## Compatibility

Transpec is tested on the following Ruby implementations:

* MRI 2.0.0
* MRI 2.1.10
* MRI 2.2.10
* MRI 2.3.7
* MRI 2.4.4
* MRI 2.5.1
* JRuby 9.2.0.0

## License

Copyright (c) 2013–2018 Yuji Nakayama

See the [LICENSE.txt](LICENSE.txt) for details.
