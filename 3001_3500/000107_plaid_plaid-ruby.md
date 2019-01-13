# plaid-ruby [![Circle CI](https://circleci.com/gh/plaid/plaid-ruby.svg?style=svg&circle-token=30ee002ac2021da5b5b5a701d45fe2888af124a5)](https://circleci.com/gh/plaid/plaid-ruby) [![Gem Version](https://badge.fury.io/rb/plaid.svg)](http://badge.fury.io/rb/plaid)

The official Ruby bindings for the [Plaid API](https://plaid.com/docs).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'plaid'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install plaid

The gem supports Ruby 2.2+ only.

### Versioning

Each major version of `plaid-ruby` targets a specific version of the Plaid API:

| API version | plaid-ruby release |
| ----------- | ------------------ |
| [`2018-05-22`][api-version-2018-05-22] (**latest**) | `6.x.x` |
| `2017-03-08` | `5.x.x` |

For information about what has changed between versions and how to update your integration, head to the [version changelog][version-changelog].


## Usage

This gem wraps the Plaid API, which is fully described in the [documentation](https://plaid.com/docs/api).

The RubyDoc for the gem is available [here](http://plaid.github.io/plaid-ruby/).

### Creating a Plaid client

Create an instance of the client using the `client_id`, `secret`, and `public_key` from your Plaid dashboard along with your environment of choice:

```ruby
require 'plaid'

client = Plaid::Client.new(env: :sandbox,
                           client_id: '***',
                           secret: '***',
                           public_key: '***')
```

The `env` field is the environment which the client will be running in. Your choices for the `env` field include:

- `:sandbox` allows you to do your initial integrations tests against preloaded data without being billed or making expensive API calls. More information about using the API sandbox can be found on the [API Sandbox documentation](https://plaid.com/docs/api#sandbox).
- `:development` allows you to test against both real and test accounts without being billed. More information about Plaid test accounts can be found in our [API documentation](https://plaid.com/docs/api/#sandbox).
- `:production` is the production environment where you can launch your production ready application and be charged for your Plaid usage.

### Tuning Faraday

The gem uses Faraday to wrap HTTPS connections, which allows you to tune certain params:

```ruby
client = Plaid::Client.new(env: :sandbox, client_id: '***', secret: '***', public_key: '***') do |builder|
  Plaid::Client.build_default_connection(builder)

  # Increase network timeout
  builder.options[:timeout] = 60*20    # 20 minutes
end
```

## Examples

### Exchanging a Link public_token for a Plaid access_token

If you have a [Link](https://github.com/plaid/link) `public token`, use this function to get an `access_token`: `client.item.public_token.exchange(public_token)`

An example of the function's usage if you have a `public_token` in hand:

```ruby
response = client.item.public_token.exchange(public_token)
access_token = response.access_token
```

### Deleting an item

```ruby
require 'plaid'

client = Plaid::Client.new(env: :sandbox,
                           client_id: '***',
                           secret: '***',
                           public_key: '***')

exchange_token_response = client.item.public_token.exchange('[Plaid Link public_token]')
access_token = exchange_token_response.access_token

# Provide the access_token for the Item you want to remove
client.item.remove(access_token)
```

### Get paginated transactions
```ruby
require 'plaid'

client = Plaid::Client.new(env: :sandbox,
                           client_id: '***',
                           secret: '***',
                           public_key: '***')

exchange_token_response = client.item.public_token.exchange('[Plaid Link public_token]')
access_token = exchange_token_response.access_token

transaction_response = client.transactions.get(access_token, '2016-07-12', '2017-01-09')
transactions = transaction_response.transactions

# the transactions in the response are paginated, so make multiple calls while
# increasing the offset to retrieve all transactions
while transactions.length < transaction_response['total_transactions']
  transaction_response = client.transactions.get(access_token,
                                                 '2016-07-12',
                                                 '2017-01-09',
                                                 offset: transactions.length)
  transactions += transaction_response.transactions
end

```

### Obtaining Item-related data

If you have an `access_token`, you can use following code to retreive data:
```ruby
require 'plaid'

client = Plaid::Client.new(env: :sandbox,
                           client_id: '***',
                           secret: '***',
                           public_key: '***')

exchange_token_response = client.item.public_token.exchange('[Plaid Link public_token]')
access_token = exchange_token_response.access_token

auth_response = client.auth.get(access_token)
auth = auth_response.auth
```

### Create a Stripe bank_account_token

Exchange a Plaid Link `public_token` for an API `access_token` and a Stripe `bank_account_token`:
```ruby
require 'plaid'

client = Plaid::Client.new(env: :sandbox,
                           client_id: '***',
                           secret: '***',
                           public_key: '***')

exchange_token_response = client.item.public_token.exchange('[Plaid Link public_token]')
access_token = exchange_token_response.access_token

stripe_response = client.processor.stripe.bank_account_token.create(access_token, '[Account ID]')
bank_account_token = stripe_response.stripe_bank_account_token
```

There are also a number of other methods you can use to retrieve data:

* `client.accounts.get(access_token, ...)`: accounts
* `client.accounts.balance.get(access_token, ...)`: real-time balances
* `client.auth.get(access_token, ...)`: auth
* `client.identity.get(access_token, ...)`: identity
* `client.transactions.get(access_token, ...)`: transactions
* `client.credit_details.get(access_token, ...)`: credit details

All of these methods return appropriate data. More information can be found on the [API documentation](https://plaid.com/docs/api).

### Categories

You can request category information:

```ruby
categories = client.categories.get             # Array of all known categories
```

### Institutions

Financial institution information is available as shown below where the function arguments represent count and offset:

```ruby
institutions = client.institutions.get(count: 3, offset: 1)
```

## Errors

Any methods making API calls will result in an exception raised unless the response code is "200: Success" or
"210: MFA Required".

`Plaid::InvalidRequestError` is returned when the request is malformed and cannot be processed.

`Plaid::InvalidInputError` is returned when all fields are provided and are in the correct format, but the values provided are incorrect in some way.

`Plaid::RateLimitExceededError` returned when the request is valid but has exceeded established rate limits.

`Plaid::APIError` is returned during planned maintenance windows and in response to API internal server errors.

`Plaid::ItemError` indicates that information provided for the Item (such as credentials or MFA) may be invalid or that the Item is not supported on Plaid's platform.

Read more about response codes and their meaning in the
[Plaid documentation](https://plaid.com/docs/api).

## Response Objects

Any API call returns a response object which is accessible by dot notation
(`response.foo.bar`) or Symbols and Strings as keys: `response[:foo][:bar]`
and `response['foo']['bar']`. Expected keys for all types of responses are defined,
and any attempt to access an unknown key will cause `NoMethodError` exception.

These strict model checks can be disabled by setting `Plaid.relaxed_models = true`.

## Network Timeout

A network timeout value is currently defaulted at 600 seconds = 10 minutes.
Some requests from the Plaid API may take longer than others and we want to
make sure that all valid requests have a chance to complete. Adjust this value
if necessary (see "Tuning Faraday").

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/plaid/plaid-ruby. See also [contributing guidelines](CONTRIBUTING.md).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

### Legacy API

If you're looking for a Ruby client that works with the legacy Plaid API, use the [`plaid-legacy` gem][2].

[2]: https://github.com/plaid/plaid-ruby-legacy
[version-changelog]: https://plaid.com/docs/api-upgrades
[api-version-2018-05-22]: https://plaid.com/docs/api-upgrades#2018-05-22