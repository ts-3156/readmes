# messenger-ruby
[![](https://img.shields.io/gem/v/messenger-ruby.svg?style=flat-square)](https://rubygems.org/gems/messenger-ruby)
[![](https://img.shields.io/circleci/project/netguru/messenger-ruby.svg?style=flat-square)](https://circleci.com/gh/netguru/messenger-ruby)
[![codebeat badge](https://codebeat.co/badges/9e5fcfd6-dc77-4a0b-a355-0c6cdd6d1f14)](https://codebeat.co/projects/github-com-netguru-messenger-ruby)

A simple library for supporting implementation of [Facebook Messenger Bot](https://developers.facebook.com/products/messenger/) in Ruby on Rails.

## Requirments

ruby 2.1+

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'messenger-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install messenger-ruby

## Configuration

#### Facebook steps

* [create Facebook page](https://www.facebook.com/pages/create/) (skip if you want to use existing page)
* [create Facebook app](https://developers.facebook.com/quickstarts/?platform=web) (skip if you want to use existing app)
* go to [Facebook for Developers](https://developers.facebook.com/apps/) and get `Page Access Token` (step __3. Get Page Access Token__ from [this tutorial](https://developers.facebook.com/docs/messenger-platform/quickstart#steps]))

#### Initializer

Create `messenger.rb` initializer in you app directory and paste `Page Access Token` from previous step:

```ruby
# YOUR_APP/config/initializers/messenger.rb
Messenger.configure do |config|
  config.verify_token      = '<VERIFY_TOKEN>' #will be used in webhook verifiction
  config.page_access_token = '<PAGE_ACCESS_TOKEN>'
end
```

#### Routes

Add to your `routes.rb`:

```ruby
# YOUR_APP/config/routes.rb
mount Messenger::Engine, at: "/messenger"

```

#### Controller

Create `messenger_controller.rb` in your controllers directory - controller has to inherit from `Messenger::MessengerController`:

```ruby
# YOUR_APP/app/controllers/messenger_controller.rb
class MessengerController < Messenger::MessengerController
  def webhook
    #logic here
    head :ok 
  end
end
```

`2XX` status is necessary to not clog your bot.

If you want your controller to be named differently, please update your `routes.rb` with appropriate route for `post /messenger/webhook` request.

#### Bot subscription

Run your application and:
* complete step __2. Setup Webhook__ from [this tutorial](https://developers.facebook.com/docs/messenger-platform/quickstart#steps) - _if you mounted `Messenger::Engine` at `/messenger` and your application can be found at `https://example.com`, your `Callback URL` will be `https://example.com/messenger/webhook`_
 * select `message_deliveries`, `messages`, `messaging_optins` and `messaging_postbacks` under Subscription Fields
* visit `/messenger/subscribe` in your app (it's replacement for __[4. Subscribe the App to the Page](https://developers.facebook.com/docs/messenger-platform/quickstart#steps)__ step) - call `subscribe` action anytime you want to refresh subscription of your app

## Usage

To send message you need to create [Messenger::Request](#messengerrequest) with one of the available [components](#components) and pass it to [Messenger::Client](#messengerclient)::send method. You can send message only to users who subscribed to your page (e.g. sent some message before).

### Messenger::Request

It's used to build parameters for Facebook API. Requires [component](#components) and `recipient_id`.

Example usage:
```ruby
Messenger::Request.new(some_component, recipient_id)
```

### Messenger::Client

Sends requests to Facebook API. Has two methods:
* `get_user_profile` - requires id of existing facebook user
* `send` - requires [Messenger::Request](#messengerrequest) object

Example usage:
```ruby
Messenger::Client.get_user_profile(user_id) #=> hash with name, surname and profile picture
Messenger::Client.send(request) #=> hash with message details or exception if request is incorrect
```

Please note that unsuccessful `send` will be shown in logs as `Facebook API response from invalid request: ...`

### Elements

Elements can't be used outside of templates.

#### Button

Lives inside [Bubble](#bubble) element or [Button template](#button-template).

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
type | `'web_url'`, `'postback'` | &#10004;
title | String | &#10004;
value | String | &#10004;

Example usage:
```ruby
Messenger::Elements::Button.new(type: 'web_url', title: 'Button', value: 'http://github.com')
```

#### Bubble

Part of [Generic template](#button-template).

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
title | String | &#10004;
subtitle | String | &#10004;*
image_url | String  | &#10004;*
buttons | [`Messenger::Elements::Button`](#button) objects array | &#10004;*
item_url | String | &#10008;

`*` - at least one of them is required

Example usage:
```ruby
Messenger::Elements::Bubble.new(title: 'First', subtitle: 'Bubble')

```

#### Quick Reply

Used by [Quick Replies](#quick-replies).

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
content_type | 'text' or 'location' | &#10004;
title | String | only if content_type is 'text'
payload | String | only if content_type is 'text'
image_url | String | &#10008;

Example usage:
```ruby
    Messenger::Elements::QuickReply.new(
            content_type: 'text',
            title: 'SomeTitle',
            payload: "PAYLOAD"
          )
```

#### Address

Used by [Receipt template](#receipt-template).

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
street_1 | String | &#10004;
street_2 | String | &#10008;
city | String | &#10004;
postal_code | String | &#10004;
state | String | &#10004;
country | String | &#10004;

Example usage:
```ruby
Messenger::Elements::Address.new(
  street_1: 'Vachel Lindsay Dr',
  street_2: '',
  city: 'Springfield',
  postal_code: '62701',
  state: 'IL',
  country:'USA'
)
```

#### Adjustment

Used by [Receipt template](#receipt-template).

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
name | String | &#10004;
amount | Integer, greater than 0 | &#10004;

Example usage:
```ruby
Messenger::Elements::Adjustment.new(name: 'Adjustment 1', amount: 20)
```

#### Item

Used by [Receipt template](#receipt-template).

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
title | String | &#10004;
subtilte | String | &#10008;
quantity | Integer | &#10008;
price | Decimal | &#10008;
currency | String, from _ISO 4217 Currency Codes_ | &#10008;
image_url | String | &#10008;

Example usage:
```ruby
Messenger::Elements::Item.new(
  title: 'Cool Tshirt',
  subtitle: 'XXL White',
  quantity: 3,
  price: 34,
  currency: 'USD',
  image_url: 'http://assets.servedby-buysellads.com/p/manage/asset/id/25397'
)
```

#### Order

Used by [Receipt template](#receipt-template).

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
order_number | String, unique per conversation | &#10004;
currency | String, from _ISO 4217 Currency Codes_ | &#10004;
payment_method | String | &#10004;
timestamp | correct timestamp (String) | &#10008;
order_url | String | &#10008;

Example usage:
```ruby
Messenger::Elements::Order.new(
  order_number: 'R190581345',
  currency: 'USD',
  payment_method: 'Visa',
  timestamp: '1428444852',
  order_url: 'http://petersapparel.parseapp.com/order?order_id=123456'
)
```

#### Summary


Used by [Receipt template](#receipt-template).

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
subtotal | Decimal | &#10008;
shipping_cost | Decimal | &#10008;
total_tax | Decimal | &#10008;
total_cost | Decimal | &#10004;

Example usage:
```ruby
Messenger::Elements::Summary.new(subtotal: 70, shipping_cost: 20, total_tax: 10, total_cost: 100)
```

### Components

You can find more info about what can be send in [Messenger Platform Docs](https://developers.facebook.com/docs/messenger-platform/send-api-reference).

#### Text

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
text | String | &#10004;


Here is complete example on how to send sample text to the user:
```ruby
if fb_params.first_entry.callback.message?
  Messenger::Client.send(
    Messenger::Request.new(
      Messenger::Elements::Text.new(text: 'some text'),
      fb_params.first_entry.sender_id
    )
  )
end

#make sure to send 200 at the end
head :ok
```

#### Image

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
url | String | &#10004;


Sending images is simple as well:
```ruby
...
Messenger::Client.send(
  Messenger::Request.new(
    Messenger::Elements::Image.new(url: 'http://lorempixel.com/400/400/cats'),
    fb_params.first_entry.sender_id
  )
)
...
```

#### Sender Actions

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
sender_action | 'typing_on', 'typing_off' or 'mark_seen' | &#10004;

Sending send action:
```ruby
...
Messenger::Client.send(
    Messenger::Request.new(
        Messenger::Elements::SenderAction.new(sender_action: 'mark_seen'),
        fb_params.first_entry.sender_id
    )
)
...
```

#### Quick Replies

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
text | String | attachment or text must be set
attachment | Attachment object | attachment or text must be set
quick_reply | Array of [Messenger::Elements::QuickReply](#quick_reply) objects| &#10008;

Example usage
```ruby

    #define quick_replies here...
    quick_replies = Messenger::Templates::QuickReplies.new(
      text: "Green or Red?",
      quick_replies: [
          Messenger::Elements::QuickReply.new(
            content_type: 'text',
            title: 'Green',
            payload: 'GREEN'
          ),
          Messenger::Elements::QuickReply.new(
              content_type: 'text',
              title: 'Red',
              payload: "RED"
          )
      ]
    )
    
    #now send quick_replies to the user
    Messenger::Client.send(
      Messenger::Request.new(quick_replies, fb_params.first_entry.sender_id)
    )
```
#### Generic template

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
elements | Array of [Messenger::Elements::Bubble](#bubble) objects | &#10004;

Example usage:
```ruby

#define bubbles here...
bubble1 = Messenger::Elements::Bubble.new(
  title: 'Bubble 1',
  subtitle: 'Cool Bubble',
  item_url: 'http://lorempixel.com/400/400/cats',
  image_url: 'http://lorempixel.com/400/400/cats',
  buttons: [
    Messenger::Elements::Button.new(
      type: 'web_url',
      title: 'Show Website',
      value: 'https://petersapparel.parseapp.com'
    )
  ]
)

bubble2 = ...

#lets create Generic template
generic = Messenger::Templates::Generic.new(
  elements: [bubble1, bubble2]
)

#now send Generic template to the user
Messenger::Client.send(
  Messenger::Request.new(generic, fb_params.first_entry.sender_id)
)
```

#### Button template

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
text | String | &#10004;
buttons | Array of [Messenger::Elements::Button](#button) objects | &#10004;

Example usage:
```ruby

#lets create Buttons template
buttons = Messenger::Templates::Buttons.new(
  text: 'Some Cool Text',
  buttons: [
    Messenger::Elements::Button.new(
      type: 'web_url',
      title: 'Show Website',
      value: 'https://petersapparel.parseapp.com'
    )
  ]
)

#now send Buttons template to the user
Messenger::Client.send(
  Messenger::Request.new(buttons, fb_params.first_entry.sender_id)
)
```

#### Receipt template

Attribute | Allowed values | Required?
--------- | -------------- | :--------:
recipient_name | String | &#10004;
order | [Messenger::Elements::Order](#order) object | &#10004;
elements | Array of [Messenger::Elements::Item](#item) objects | &#10004;
address | [Messenger::Elements::Address](#address) object | &#10008;
summary | [Messenger::Elements::Summary](#summary) object | &#10004;
adjustments | Array of [Messenger::Elements::Adjustment](#adjustment) objects | &#10008;

Example usage:
```ruby
#define order element here...
order = Messenger::Elements::Order.new(
  order_number: 'R190581345',
  currency: 'USD',
  payment_method: 'Visa',
  timestamp: '1428444852',
  order_url: 'http://petersapparel.parseapp.com/order?order_id=123456'
)

#and define all other template elements
item1 = ...
item2 = ...
address = ...
summary = ...
adjustment1 = ...
adjustment2 = ...

#lets create Receipt template
receipt = Messenger::Templates::Receipt.new(
  recipient_name: 'Random Recipient',
  order: order,
  elements: [item1, item2],
  address: address,
  summary: summary,
  adjustments: [adjustment1, adjustment2]
)

#now send Receipt template to the user
Messenger::Client.send(
  Messenger::Request.new(receipt, fb_params.first_entry.sender_id)
)

```

### Entries

According to Facebook documentation, there is possibility that you can receive multiple `entries` and multiple `messagings`.
That's why we made it easy for you to iterate over `entries` and `messagings`, but we've also created `first_entry` method
that returns first entry in `entry` array, because that is the most common case.

Example usage:

```ruby
fb_params.entries.each do |entry|
  entry.messagings.each do |messaging|
    if messaging.callback.message?
      Messenger::Client.send(
        Messenger::Request.new(
          Messenger::Elements::Text.new(text: "Echo: #{messaging.callback.text}"),
          messaging.sender_id
        )
      )
    end
  end
end
```

Or with `first_entry` method:

```ruby
if fb_params.first_entry.callback.message?
  Messenger::Client.send(
    Messenger::Request.new(
      Messenger::Elements::Text.new(text: "Echo: #{fb_params.first_entry.callback.text}"),
      fb_params.first_entry.sender_id
    )
  )
end
```

### fb_params

Has control over entries received from Facebook API. For more informations please visit Messenger Platform Docs. `fb_params` includes array of Entry objects.

#### Entry

Attribute | Additional info
----------| ---------------
id | String, unique for conversation
time | String, timestamp format
messagings | Array of [Messenger::Parameters::Messaging](#messaging) objects


#### Messaging

Attribute | Additional info
--------- | ---------------
sender_id | String
recipient_id | String
callback | [Messenger::Parameters::Message](#message), [Messenger::Parameters::Delivery](#delivery), [Messenger::Parameters::Optin](#optin), [Messenger::Parameters::Delivery](#postback), [Messenger::Parameters::Read](#read) or [Messenger::Parameters::AccountLinking](#account_linking) object

Callback responds to following methods to help detect types:

Method | Type returned
------ | -------------
message? | Boolean
delivery? | Boolean
optin? | Boolean
postback? | Boolean
read? | Boolean
account_linking? | Boolean

#### Message

Attribute | Additional info
----------| ---------------
mid |
seq |
sticker_id |
text |

s | Array of [Messenger::Parameters::Attachment](#attachment) objects
is_echo |
app_id |
metadata |

#### Attachment

#### Delivery

#### Optin

#### Postback

#### Read

#### Account Linking


Example usage:

```ruby
fb_params.first_entry.callback.message?
fb_params.first_entry.callback.postback?
fb_params.first_entry.callback.delivery?
fb_params.first_entry.callback.optin?
fb_params.first_entry.callback.attachments
fb_params.first_entry.callback.text
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `rake console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/netguru/messenger-ruby.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
