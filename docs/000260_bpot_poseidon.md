# Unmaintained

This project is currently unmaintained. There are a handful of other options for interacting with Kafka from Ruby:

  * A pure ruby client, [ruby-kafka](https://github.com/zendesk/ruby-kafka), which is 0.9 compatible and support consumer groups.
  * A REST proxy, [Kafka Rest](https://github.com/confluentinc/kafka-rest).
  * For JRuby there is [jruby-kafka](https://github.com/joekiller/jruby-kafka) which wraps the Java consumer.

# Poseidon [![Build Status](https://travis-ci.org/bpot/poseidon.png?branch=master)](https://travis-ci.org/bpot/poseidon) [![Code Climate](https://codeclimate.com/github/bpot/poseidon.png)](https://codeclimate.com/github/bpot/poseidon)

Poseidon is a Kafka client. Poseidon only supports the 0.8 API and above.

**Until 1.0.0 this should be considered ALPHA software and not neccessarily production ready.**

## Usage

### API Documentation

* [Latest release](http://rubydoc.info/gems/poseidon)
* [Github master](http://rubydoc.info/github/bpot/poseidon)

### Installing a Kafka broker locally

Follow the [instructions](http://kafka.apache.org/documentation.html#quickstart) on the Kafka wiki to build Kafka 0.8 and get a test broker up and running.

### Sending messages to Kafka

```ruby
require 'poseidon'

producer = Poseidon::Producer.new(["localhost:9092"], "my_test_producer")

messages = []
messages << Poseidon::MessageToSend.new("topic1", "value1")
messages << Poseidon::MessageToSend.new("topic2", "value2")
producer.send_messages(messages)
```

More detailed [Poseidon::Producer](http://rubydoc.info/github/bpot/poseidon/Poseidon/Producer) documentation.

### Fetching messages from Kafka

```ruby
require 'poseidon'

consumer = Poseidon::PartitionConsumer.new("my_test_consumer", "localhost", 9092,
                                            "topic1", 0, :earliest_offset)

loop do
  messages = consumer.fetch
  messages.each do |m|
    puts m.value
  end
end
```

More detailed [Poseidon::PartitionConsumer](http://rubydoc.info/github/bpot/poseidon/Poseidon/PartitionConsumer) documentation.

### Using snappy compression

To use snappy compression in your producers or consumers, install the [snappy](http://rubygems.org/gems/snappy) gem or simply add `gem 'snappy'` to your project's Gemfile.

## Semantic Versioning

This gem follows [SemVer](http://semver.org). In particular, the public API should not be considered stable and anything may change without warning until Version 1.0.0.  Additionally, for the purposes of the versioning the public API is everything documented in the [public API docs](http://rubydoc.info/github/bpot/poseidon).

## Requirements

* Ruby 1.9.3 or higher (1.9.2 and below not supported!!!)
* Kafka 0.8 or higher

## Integration Tests

In order to run integration tests you must specify a `KAFKA_PATH` environment variable which points to a built Kafka installation.  To build Kafka locally follow the [instructions](http://kafka.apache.org/documentation.html#quickstart) provided by the project.

    # cd ~/src/poseidon/
    # bundle
    # KAFKA_PATH=~/src/kafka bundle exec rake spec:all # run all unit and integration specs

The poseidon test suite will take care of spinning up and down the broker(s) needed for the integration tests.
