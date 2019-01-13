# Telegram::Bot

[![Gem Version](https://badge.fury.io/rb/telegram-bot.svg)](http://badge.fury.io/rb/telegram-bot)
[![Code Climate](https://codeclimate.com/github/telegram-bot-rb/telegram-bot/badges/gpa.svg)](https://codeclimate.com/github/telegram-bot-rb/telegram-bot)
[![Build Status](https://travis-ci.org/telegram-bot-rb/telegram-bot.svg)](https://travis-ci.org/telegram-bot-rb/telegram-bot)

__Breaking changes in v0.14!__ See [upgrade guide](https://github.com/telegram-bot-rb/telegram-bot/wiki/Upgrading-to-0.14).

Tools for developing Telegram bots. Best used with Rails, but can be used in
[standalone app](https://github.com/telegram-bot-rb/telegram-bot/wiki/Not-rails-application).
Supposed to be used in webhook-mode in production, and poller-mode
in development, but you can use poller in production if you want.

Package contains:

- Lightweight client for bot API (with fast and thread-safe
  [httpclient](https://github.com/nahi/httpclient) under the hood).
- Controller with message parser: define methods for commands, not `case` branches.
- Middleware and routes helpers for production env.
- Poller with automatic source-reloader for development env.
- Rake tasks to update webhook urls.
- __[Async mode](#async-mode)__.
  Let the queue adapter handle network errors!

Here is sample [telegram_bot_app](https://github.com/telegram-bot-rb/telegram_bot_app)
with session, keyboards and inline queries.
Run it on your local machine in 1 minute!

And here is [app template](https://github.com/telegram-bot-rb/rails_template)
to generate clean app in seconds.

Examples and cookbook in [wiki](https://github.com/telegram-bot-rb/telegram-bot/wiki).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'telegram-bot'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install telegram-bot

Require if necessary:

```ruby
require 'telegram/bot'
```

## Usage

### Configuration

While clients can be instantiated explicitly, there is `Telegram.bots_config=` method
to configure app-wide clients, which are accessible via `Telegram.bots`.
It accepts hash of `{bot_id: bot_config}`, and there is special id `:default`
which is used for `Telegram.bot`.

```ruby
Telegram.bots_config = {
  default: DEFAULT_BOT_TOKEN,
  chat: {token: CHAT_BOT_TOKEN, username: 'chatbot'},
}

Telegram.bot.get_updates
Telegram.bot == Telegram.bots[:default] # true
Telegram.bots[:chat].send_message(...)
```

### Configuration in Rails app

In Rails app `Telegram.bots_config` is read from `secrets.yml` automatically
from `telegram` section:

```yml
development:
  telegram:
    # Single bot can be specified like this
    bot: TOKEN
    # or
    bot:
      token: TOKEN
      username: SomeBot

    # For multiple bots in single app use hash of `internal_bot_id => settings`
    bots:
      # just set the bot token
      chat: TOKEN_1
      # or add username to support commands with mentions (/help@ChatBot)
      auction:
        token: TOKEN_2
        username: ChatBot
```

For Rails >= 5.2 `Telegram::Bot` searches for config first in credentials and then in secrets.
To use credentials as config store, add telegram section to credentials instead of secrets using
`rails credentials:edit`. In this case be aware of that [Rails may not load
credentials in dev environment by default](https://github.com/telegram-bot-rb/telegram-bot/issues/74#issuecomment-384205609).

I suggest not using Rails 5.2 credentials because it can lead to leakage of sesitive data
and it's more difficult to use in multiple environments. See
[secure_credentials](https://github.com/printercu/secure_credentials) gem for better option.

From now clients will be accessible with `Telegram.bots[:chat]` or `Telegram.bots[:auction]`.
Single bot can be accessed with `Telegram.bot` or `Telegram.bots[:default]`.

### Client

Client is instantiated with `Telegram::Bot::Client.new(token, username)`.
Username is optional and used only to parse commands with mentions.

There is `request(path_suffix, body)` method to perform any query.
And there are shortcuts for all available requests in underscored style
(`answer_inline_query(params)` instead of `answerInlineQuery`).

```ruby
bot.request(:getMe) or bot.get_me
bot.request(:getupdates, offset: 1) or bot.get_updates(offset: 1)
bot.send_message(chat_id: chat_id, text: 'Test')
```

There is no magic, they just pass params as is and set `path_suffix`.
See [`Client`](https://github.com/telegram-bot-rb/telegram-bot/blob/master/lib/telegram/bot/client.rb)
class for list of available methods. Please open PR or issue if it misses methods from
new API versions.

Any API request error will raise `Telegram::Bot::Error` with description in its message.
Special `Telegram::Bot::Forbidden` is raised when bot can't post messages to the chat anymore.

#### Typed responses

By default client will return parsed json responses. You can enable
response typecasting to virtus models using
[`telegram-bot-types`](https://github.com/telegram-bot-rb/telegram-bot-types) gem:

```ruby
# Add to your gemfile:
gem 'telegram-bot-types', '~> x.x.x'
# Enable typecasting:
Telegram::Bot::Client.typed_response!
# or for single instance:
bot.extend Telegram::Bot::Client::TypedResponse

bot.get_me.class # => Telegram::Bot::Types::User
```

### Controller

Controller makes it easy to keep bot's code readable.
It does nothing more than finding out action name for update and invoking it.
So there is almost no overhead comparing to large `switch`, while you
can represent actions as separate methods keeping source much more readable and supportable.

New instance of controller is instantiated for each update.
This way every update is processed in isolation from others.

Bot controllers like usual rails controllers provides features like callbacks,
`rescue_from` and instrumentation.

```ruby
class Telegram::WebhookController < Telegram::Bot::UpdatesController
  # use callbacks like in any other controllers
  around_action :with_locale

  # Every update can have one of: message, inline_query, chosen_inline_result,
  # callback_query, etc.
  # Define method with same name to respond to this updates.
  def message(message)
    # message can be also accessed via instance method
    message == self.payload # true
    # store_message(message['text'])
  end

  # This basic methods receives commonly used params:
  #
  #   message(payload)
  #   inline_query(query, offset)
  #   chosen_inline_result(result_id, query)
  #   callback_query(data)

  # Define public methods ending with `!` to handle commands.
  # Command arguments will be parsed and passed to the method.
  # Be sure to use splat args and default values to not get errors when
  # someone passed more or less arguments in the message.
  def start!(data = nil, *)
    # do_smth_with(data)

    # There are `chat` & `from` shortcut methods.
    # For callback queries `chat` if taken from `message` when it's available.
    response = from ? "Hello #{from['username']}!" : 'Hi there!'
    # There is `respond_with` helper to set `chat_id` from received message:
    respond_with :message, text: response
    # `reply_with` also sets `reply_to_message_id`:
    reply_with :photo, photo: File.open('party.jpg')
  end

  private

  def with_locale(&block)
    I18n.with_locale(locale_for_update, &block)
  end

  def locale_for_update
    if from
      # locale for user
    elsif chat
      # locale for chat
    end
  end
end
```

#### Reply helpers

There are helpers to respond for basic actions. They just set chat/message/query
identifiers from update. See
[`ReplyHelpers`](https://github.com/telegram-bot-rb/telegram-bot/blob/master/lib/telegram/bot/updates_controller/reply_helpers.rb)
module for more information. Here are this methods signatures:

```ruby
def respond_with(type, params); end
def reply_with(type, params); end
def answer_inline_query(results, params = {}); end
def answer_callback_query(text, params = {}); end
def edit_message(type, params = {}); end
```

#### Optional typecasting

You can enable typecasting of `update` with `telegram-bot-types` by including
`Telegram::Bot::UpdatesController::TypedUpdate`:

```ruby
class Telegram::WebhookController < Telegram::Bot::UpdatesController
  include Telegram::Bot::UpdatesController::TypedUpdate

  def message(message)
    message.class # => Telegram::Bot::Types::Message
  end
end
```

#### Session

This API is very close to ActiveController's session API, but works different
under the hood. Cookies can not be used to store session id or
whole session (like CookieStore does). So it uses key-value store and `session_key`
method to build identifier from update.

Store can be one of numerous `ActiveSupport::Cache` stores.
While `:file_store` is suitable for development and single-server deployments
without heavy load, it doesn't scale well. Key-value databases with persistance
like Redis are more appropriate for production use.

```ruby
# In rails app store can be configured in env files:
config.telegram_updates_controller.session_store = :redis_store, {expires_in: 1.month}

# In other app it can be done for all controllers with:
Telegram::Bot::UpdatesController.session_store = :redis_store, {expires_in: 1.month}
# or for specific one:
OneOfUpdatesController.session_store = :redis_store, {expires_in: 1.month}
```

Default session id is made from bot's username and `(from || chat)['id']`.
It means that session will be the same for updates from user in every chat,
and different for every user in the same group chat.
To change this behavior you can override `session_key` method, or even
define [multiple sessions](https://github.com/telegram-bot-rb/telegram-bot/wiki/Multiple-session-objects)
in single controller. For details see `Session` module.

```ruby
class Telegram::WebhookController < Telegram::Bot::UpdatesController
  include Telegram::Bot::UpdatesController::Session
  # or just shortcut:
  use_session!

  # You can override global config for this controller.
  self.session_store = :file_store

  def write!(text = nil, *)
    session[:text] = text
  end

  def read!(*)
    respond_with :message, text: session[:text]
  end

  private

  # In this case session will persist for user only in specific chat.
  # Same user in other chat will have different session.
  def session_key
    "#{bot.username}:#{chat['id']}:#{from['id']}" if chat && from
  end
end
```

#### Message context

It's usual to support chain of messages like BotFather: after receiving command
it asks you for additional argument. There is `MessageContext` for this:

```ruby
class Telegram::WebhookController < Telegram::Bot::UpdatesController
  include Telegram::Bot::UpdatesController::MessageContext

  def rename!(*)
    # set context for the next message
    save_context :rename_from_message
    respond_with :message, text: 'What name do you like?'
  end

  # register context handlers to handle this context
  def rename_from_message(*words)
    update_name words[0]
    respond_with :message, text: 'Renamed!'
  end

  # You can use same action name as context name:
  def rename!(name = nil, *)
    if name
      update_name name
      respond_with :message, text: 'Renamed!'
    else
      save_context :rename!
      respond_with :message, text: 'What name do you like?'
    end
  end
end
```

#### Callback queries

You can include `CallbackQueryContext` module to split `#callback_query` into
several methods. It doesn't require session support, and takes context from
data: if data has a prefix with colon like this `my_ctx:smth...` it invokes
`my_ctx_callback_query('smth...')` when such action method is defined. Otherwise
it invokes `callback_query('my_ctx:smth...')` as usual.
Callback queries without prefix stay untouched.

```ruby
# This one handles `set_value:%{something}`.
def set_value_callback_query(new_value = nil, *)
  save_this(value)
  answer_callback_query('Saved!')
end

# And this one is for `make_cool:%{something}`
def make_cool_callback_query(thing = nil, *)
  do_it(thing)
  answer_callback_query("#{thing} is cool now! Like a callback query context.")
end
```

### Routes in Rails app

There is `telegram_webhook` helper for rails app to define routes for webhooks.
It defines routes at `telegram/#{bot.token}` and connects bots with controller.

```ruby
# Most off apps would require
telegram_webhook TelegramController
# which is same as
telegram_webhook TelegramController, :default

# Use different controllers for each bot:
telegram_webhook TelegramChatController, :chat
telegram_webhook TelegramAuctionController, :auction

# Defined route is named and its name depends on `Telegram.bots`.
# For single bot it will use 'telegram_webhook',
# for multiple bots it uses bot's key in the `Telegram.bots` as prefix
# (eg. `chat_telegram_webhook`).
# You can override this with `as` option:
telegram_webhook TelegramController, as: :custom_telegram_webhook
```

#### Processesing updates

To process update with controller call `.dispatch(bot, update)` on it.
There are several options to run it automatically:

- Use webhooks with routes helper (described above).
- Use `Telegram::Bot::Middleware` with rack ([example in wiki](https://github.com/telegram-bot-rb/telegram-bot/wiki/Not-rails-application)).
- Use poller (described in the next section).

To run action without update (ex., send notifications from jobs),
you can call `#process` directly. In this case controller can be initialized
with `:from` and/or `:chat` options instead of `update` object:

```ruby
controller = ControllerClass.new(bot, from: telegram_user, chat: telegram_chat)
controller.process(:welcome, *args)
```

### Development & Debugging

Use `rake telegram:bot:poller` to run poller in rails app. It automatically loads
changes without restart in development env.
Optionally pass bot id in `BOT` envvar (`BOT=chat`) to specify bot to run poller for.

This task requires `telegram_webhook` helper to be used as it connects bots with controller.
To run poller in other cases use:

```ruby
Telegram::Bot::UpdatesPoller.start(bot, controller_class)
```

### Testing

There is a `Telegram::Bot::ClientStub` class to stub client for tests.
Instead of performing API requests it stores them in a `requests` hash.

To stub all possible clients use `Telegram::Bot::ClientStub.stub_all!` before
initializing clients. Here is a template for RSpec:

```ruby
# environments/test.rb
# Make sure to run it before defining routes or accessing any bot in the app!
Telegram.reset_bots
Telegram::Bot::ClientStub.stub_all!

# rails_helper.rb
RSpec.configure do |config|
  # ...
  config.after { Telegram.bot.reset }
  # or for multiple bots:
  config.after { Telegram.bots.each_value(&:reset) }
  # ...
end
```

RSpec contexts and helpers are included automatically for groups and examples with matching
tags. In RSpec < 3.4 it's required to use `include_context` explicitly.
See [list of available helpers](https://github.com/telegram-bot-rb/telegram-bot/tree/master/lib/telegram/bot/rspec)
for details.

There are 3 types of integration tests:

- `:rails` - for testing bot in webhooks-mode in Rails application.
  It simulates webhook requests POSTing data to controller's endpoint.
  It works on the top of requests specs, so `rspec-rails` gem is required.
- `:rack` - For testing bot in webhooks-mode in non-Rails application.
  It uses `rack-test` gem to POST requests to bot's endpoint.
- `:poller` - Calls `.dispatch` directly on controller class.

Pick the appropriate one, then require `telegram/bot/rspec/integration/#{type}`
and mark spec group with tag `telegram_bot: type`. See configuration options
for each type in
[telegram/bot/rspec/integration/](https://github.com/telegram-bot-rb/telegram-bot/tree/master/lib/telegram/bot/rspec/integration).

Here is an example test for a Rails app:

```ruby
# spec/requests/telegram_webhooks_spec.rb
require 'telegram/bot/rspec/integration/rails'

RSpec.describe TelegramWebhooksController, telegram_bot: :rails do
  # for old RSpec:
  # include_context 'telegram/bot/integration/rails'

  # Main method is #dispatch(update). Some helpers are:
  #   dispatch_message(text, options = {})
  #   dispatch_command(cmd, *args)

  # Available matchers can be found in Telegram::Bot::RSpec::ClientMatchers.
  it 'shows usage of basic matchers'
    # The most basic one is #make_telegram_request(bot, endpoint, params_matcher)
    expect { dispatch_command(:start) }.
      to make_telegram_request(bot, :sendMessage, hash_including(text: 'msg text'))

    # There are some shortcuts for dispatching basic updates and testing responses.
    expect { dispatch_message('Hi') }.to send_telegram_message(bot, /msg regexp/, some: :option)
  end

  describe '#start!' do
    subject { -> { dispatch_command :start } }
    # Using built in matcher for `respond_to`:
    it { should respond_with_message 'Hi there!' }
  end

  # There is context for callback queries with related matchers,
  # use :callback_query tag to include it.
  describe '#hey_callback_query', :callback_query do
    let(:data) { "hey:#{name}" }
    let(:name) { 'Joe' }
    it { should answer_callback_query('Hey Joe') }
    it { should edit_current_message :text, text: 'Done' }
  end
end
```

There is a context for testing bot controller in the way similar to Rails controller tests.
It's supposed to be a low-level alternative for integration tests. Among the differences is
that controller tests use a single controller instance for all dispatches in specific exaple,
session is stubbed (does not use configured store engine), and update is not serialized
so it also supports mocks. This can be useful for unit testing, but should not be used as
the default way to test the bot.

```ruby
require 'telegram/bot/updates_controller/rspec_helpers'
RSpec.describe TelegramWebhooksController, type: :telegram_bot_controller do
  # for old RSpec:
  # include_context 'telegram/bot/updates_controller'

  # Same helpers and matchers like dispatch_command, answer_callback_query are available here.
end
```

See sample app for more examples.

### Deployment

While webhooks-mode is prefered, poller still can be used in production.
See [comparison and examples](https://github.com/telegram-bot-rb/telegram-bot/wiki/Deployment)
for details.

### Async mode

There is built in support for async requests using ActiveJob. Without Rails
you can implement your own worker class to handle such requests. This allows:

- Process updates very fast, without waiting for telegram responses.
- Handle and retry network and other errors with queue adapter.
- ???

Instead of performing request instantly client serializes it, pushes to queue,
and immediately return control back. The job is then fetched with a worker
and real API request is performed. And this all is absolutely transparent for the app.

To enable this mode add `async: true` to bot's config.
For more information and custom configuration check out
[docs](http://www.rubydoc.info/github/telegram-bot-rb/telegram-bot/master/Telegram/Bot/Async) or
[source](https://github.com/telegram-bot-rb/telegram-bot/blob/master/lib/telegram/bot/async.rb).

If you want async mode, but don't want to setup queue, know that Rails 5 are shipped
with Async adapter by default, and there is
[Sucker Punch](https://github.com/brandonhilkert/sucker_punch) for Rails 4.

To disable async mode for the block of code use `bot.async(false) { bot.send_photo }`.
Yes, it's threadsafe too.

#### Limitations

- Client will not return API response.
- Sending files is not available in async mode, because they can not be serialized.

## Development

After checking out the repo, run `bin/setup` to install dependencies and git hooks.
Then, run `appraisal rake spec` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`,
and then run `bundle exec rake release`, which will create a git tag for the version,
push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

Use `bin/fetch-telegram-methods` to update API methods list from Telegram website.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/telegram-bot-rb/telegram-bot.
