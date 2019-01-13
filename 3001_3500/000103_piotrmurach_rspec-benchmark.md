# RSpec::Benchmark

[![Gem Version](https://badge.fury.io/rb/rspec-benchmark.svg)][gem]
[![Build Status](https://secure.travis-ci.org/piotrmurach/rspec-benchmark.svg?branch=master)][travis]
[![Build status](https://ci.appveyor.com/api/projects/status/nxq3dr8xkafmgiv0?svg=true)][appveyor]
[![Code Climate](https://codeclimate.com/github/piotrmurach/rspec-benchmark/badges/gpa.svg)][codeclimate]
[![Coverage Status](https://coveralls.io/repos/github/piotrmurach/rspec-benchmark/badge.svg)][coverage]
[![Inline docs](http://inch-ci.org/github/piotrmurach/rspec-benchmark.svg?branch=master)][inchpages]

[gem]: http://badge.fury.io/rb/rspec-benchmark
[travis]: http://travis-ci.org/piotrmurach/rspec-benchmark
[appveyor]: https://ci.appveyor.com/project/piotrmurach/rspec-benchmark
[codeclimate]: https://codeclimate.com/github/piotrmurach/rspec-benchmark
[coverage]: https://coveralls.io/github/piotrmurach/rspec-benchmark
[inchpages]: http://inch-ci.org/github/piotrmurach/rspec-benchmark

> Performance testing matchers for RSpec

**RSpec::Benchmark** uses [benchmark-perf](https://github.com/piotrmurach/benchmark-perf) for measuring execution time and iterations per second and [benchmark-trend](https://github.com/piotrmurach/benchmark-trend) for asymptotic behaviour estimation.

## Why?

Integration and unit tests ensure that changing code maintains expected functionality. What is not guaranteed is the code changes impact on library performance. It is easy to refactor your way out of fast to slow code.

If you are new to performance testing you may find [Caveats](#4-caveats) section helpful.

## Contents

* [1. Usage](#1-usage)
  * [1.1 Timing](#11-timing)
  * [1.2 Iterations ](#12-iterations)
  * [1.3 Comparison ](#13-comparison)
  * [1.4 Complexity](#14-complexity)
* [2. Compounding](#2-compounding)
* [3. Filtering](#3-filtering)
* [4. Caveats](#4-caveats)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-benchmark'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-benchmark

## 1. Usage

For matchers to be available globally, in `spec_helper.rb` do:

```ruby
require 'rspec-benchmark'

RSpec.configure do |config|
  config.include RSpec::Benchmark::Matchers
end
```

This will add the following matchers:

* `perform_under` to see how fast your code runs
* `perform_at_least` to see how many iteration per second your code can do
* `perform_(faster|slower)_than` to compare implementations
* `perform_(constant|linear|logarithmic|power|exponential)` to see how your code scales with time

that will help you express expected performance benchmark for an evaluted code.

Alternatively, you can add matchers for particular example:

```ruby
RSpec.describe "Performance testing" do
  include RSpec::Benchmark::Matchers
end
```

Then you're good to start setting performance expectations:

```ruby
expect {
  ...
}.to perform_under(6).ms
```

### 1.1 Timing

The `perform_under` matcher answers the question of how long does it take to perform a given block of code on average. The measurements are taken executing the block of code in a child process for accurent cpu times.

```ruby
expect { ... }.to perform_under(0.01).sec
```

All measurements are assumed to be expressed as seconds. However, you can also provide time in `ms`, `us` and `ns`. The equivalent example in `ms` would be:

```ruby
expect { ... }.to perform_under(10).ms
expect { ... }.to perform_under(10000).us
```

by default the above code will be sampled only once but you can change this by using the `sample` matcher like so:

```ruby
expect { ... }.to perform_under(0.01).sample(10) # repeats measurements 10 times
```

For extra expressiveness you can use `times`:

```ruby
expect { ... }.to perform_under(0.01).sample(10).times
```

You can also use `warmup` matcher that can run your code before the actual samples are taken to reduce erratic execution times.

For example, you can execute code twice before you take 10 actual measurements:

```ruby
expect { ... }.to perform_under(0.01).sec.warmup(2).times.sample(10).times
```

### 1.2 Iterations

The `perform_at_least` matcher allows you to establish performance benchmark of how many iterations per second a given block of code should perform. For example, to expect a given code to perform at least 10K iterations per second do:

```ruby
expect { ... }.to perform_at_least(10000).ips
```

The `ips` part is optional but its usage clarifies the intent.

The performance timing of this matcher can be tweaked using the `within` and `warmup` matchers. These are expressed as seconds.

By default `within` matcher is set to `0.2` second and `warmup` matcher to `0.1` respectively. To change how long measurements are taken, for example, to double the time amount do:

```ruby
expect { ... }.to perform_at_least(10000).within(0.4).warmup(0.2).ips
```

The higher values for `within` and `warmup` the more accurate average readings and more stable tests at the cost of longer test suite overall runtime.

### 1.3 Comparison

The `perform_faster_than` and `perform_slower_than` matchers allow you to test performance of your code compared with other. For example:

```ruby
expect { ... }.to perform_faster_than { ... }
expect { ... }.to perform_slower_than { ... }
```

And if you want to compare how much faster or slower your code is do:

```ruby
expect { ... }.to perform_faster_than { ... }.once
expect { ... }.to perform_faster_than { ... }.twice
expect { ... }.to perform_faster_than { ... }.exactly(5).times
expect { ... }.to perform_faster_than { ... }.at_least(5).times
expect { ... }.to perform_faster_than { ... }.at_most(5).times

expect { ... }.to perform_slower_than { ... }.once
expect { ... }.to perform_slower_than { ... }.twice
expect { ... }.to perform_slower_than { ... }.at_least(5).times
expect { ... }.to perform_slower_than { ... }.at_most(5).times
expect { ... }.to perform_slower_than { ... }.exactly(5).times
```

The `times` part is also optional.

The performance timining of each matcher can be tweaked using the `within` and `warmup` matchers. These are expressed as seconds. By default `within` matcher is set to `0.2` and `warmup` matcher to `0.1` second respectively. To change these matchers values do:

```ruby
expect { ... }.to perform_faster_than.within(0.4).warmup(0.2) { ... }
```

The higher values for `within` and `warmup` the more accurate average readings and more stable tests at the cost of longer test suite overall runtime.

### 1.4 Complexity

The `perform_constant`, `perform_linear`, `perform_logarithmic`, `perform_power` and `perform_exponential` matchers are useful for estimating the asymptotic behaviour of a given block of code. The most basic way to use the expectations to test how your code scales is to use the matchers:

```ruby
expect { ... }.to perform_constant
expect { ... }.to perform_linear
expect { ... }.to perform_logarithmic
expect { ... }.to perform_power
expect { ... }.to perform_exponential
```

However, for the matchers to be of any use you will need to provide the range of inputs on which they will perform measurements using `in_range` matcher. Each range input together with its corresponding iteration index will be yielded as arguments to the evaluted block.

For example, to create a power range of inputs from `8` to `100_000` do:

```ruby
expect { |n, i|
  ...
}.to perform_linear.in_range(8, 100_000)
```

This example will generate and yield input `n` and index `i` pairs `[8, 0]`, `[64, 1]`, `[512, 2]`, `[4K, 3]`, `[32K, 4]` and `[100K, 5]` respectively.

By default the range will be generated using ratio of 8. You can change this using `ratio` matcher:

```ruby
expect { |n, i|
  ...
}.to perform_linear.in_range(8, 100_000).ratio(2)
```

The performance of code block is measured only once per range input. You can change this value and in doing so increase stability of your performance test using the `sample` matcher. For example, to repeat measurements 100 times for each range data input do:

```ruby
expect { |n, i|
  ...
}.to perform_linear.in_range(8, 100_000).ratio(2).sample(100).times
```

## 2. Compounding

All the matchers can be used in compound expressions via `and/or`. For example, if you wish to check if a computation performs under certain time boundry and iterates at least a given number do:

```ruby
expect {
  ...
}.to perform_under(6).ms and perform_at_least(10000).ips
```

## 3. Filtering

Usually performance tests are best left for CI or occasional runs that do not affect TDD/BDD cycle.

To achieve isolation you can use RSpec filters to exclude performance tests from regular runs. For example, in `spec_helper`:

```ruby
RSpec.config do |config|
  config.filter_run_excluding perf: true
end
```

and then in your example group do:

```ruby
RSpec.describe ..., :perf do
  ...
end
```

Then you can run groups or examples tagged with `perf`:

```
rspec --tag perf
```

Another option is to simply isolate the performance specs in separate directory such as `spec/performance/...` and add custom rake task to run them.

## 4. Caveats

When writing performance tests things to be mindful are:

+ The tests may **potentially be flaky** thus its best to use sensible boundaries:
  - **too strict** boundaries may cause false positives, making tests fail
  - **too relaxed** boundaries may also lead to false positives missing actual performance regressions
+ Generally performance tests will be **slow**, but you may try to avoid _unnecessarily_ slow tests by choosing smaller maximum value for sampling

If you have any other observations please share them!

## Contributing

1. Fork it ( https://github.com/piotrmurach/rspec-benchmark/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Copyright

Copyright (c) 2016-2018 Piotr Murach. See LICENSE for further details.
