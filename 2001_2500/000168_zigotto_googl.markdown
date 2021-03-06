# googl

Google URL Shortener API in Ruby

## Continuous Integration

[![Build Status](https://travis-ci.org/zigotto/googl.png?branch=master)](https://travis-ci.org/zigotto/googl)
[![Gem Version](https://badge.fury.io/rb/googl.png)](http://badge.fury.io/rb/googl)

## Basic Usage

### Shorten a long URL

``` ruby
url = Googl.shorten('http://www.zigotto.com')

# Optional - provide a user_ip and your google api_key to bypass Google's request rate limits
url = Googl.shorten('http://www.zigotto.com', "213.57.23.49", "google_api_key")

url.short_url
#=> "http://goo.gl/ump4S"

url.long_url
#=> "http://www.zigotto.com/"

url.qr_code
#=> "http://goo.gl/ump4S.qr"

url.info
#=> "http://goo.gl/ump4S.info"
```

### Expand a short URL

``` ruby
url = Googl.expand('http://goo.gl/ump4S')

url.long_url
#=> "http://www.zigotto.com/"
```

## Authentication

The Google URL Shortener API supports the OAuth and ClientLogin mechanisms for authenticating.

For shorten requests, each short URL for an authenticated user is unique, and thus will gather unique click statistics. In addition, it shows up on the user's dashboard at http://goo.gl.

### ClientLogin

``` ruby
client = Googl.client('user@gmail.com', 'my_valid_password')

url = client.shorten('https://github.com/zigotto/googl')
url.short_url
#=> http://goo.gl/DWDfi
```

Go to http://goo.gl to see URL statistics.

### OAuth

Google supports three flows of OAuth 2.0

* The <b>client-side</b> flow for JavaScript applications running in a browser. (TODO)
* The <b>server-side</b> flow for web applications with servers that can securely store persistent information.
* The <b>native application</b> flow for desktop and mobile applications.

Today, gem googl support only <b>server-side</b> and <b>native application</b>.

#### Server-side web applications

You'll need to register your application with Google to get a `client_id` and record the `redirect_uri` you'd like to use.
See the [Registering](http://code.google.com/apis/accounts/docs/OAuth2.html#Registering) your app with Google section for details on how to register.

``` ruby
client = Googl::OAuth2.server("client_id", "client_secret", "redirect_uri")
```

Redirect your users to

``` ruby
client.authorize_url
```

After the user approves access or chooses not to, we'll redirect to the <em>redirect_uri</em> you passed us and append either an authorization code.

``` ruby
client.request_access_token(params["code"])
client.authorized?
#=> true
```

Now you can get a user's history, shorten url, etc...

``` ruby
history = client.history
history.total_items
#=> 19
```

``` ruby
url = Googl.shorten('https://github.com/zigotto/googl')
url.short_url
#=> http://goo.gl/DWDfi
```

#### Native applications

You'll need to register your application with Google to get a `client_id` and record the special `redirect_uri: urn:ietf:wg:oauth:2.0:oob`.
See the [Registering](http://code.google.com/apis/accounts/docs/OAuth2.html#Registering) your app with Google section for details on how to register.

When you use this redirect_uri, instead of redirecting the user's browser to a page on your site with an authorization code, Google will display the authorization code or error response in the title of the page and a text field with instructions for the user to copy and paste it in to your application. Your application can either monitor the window title of a web-view or browser window it launches and close it once the authorization code appears or prompt the user to copy and paste the code.

``` ruby
client = Googl::OAuth2.native("client_id", "client_secret")
```

Open a browser or a webview to the OAuth dialog at

``` ruby
client.authorize_url
```

In the native app flow, after the user approves access, we'll display the authorization code in the title of the page and in a text input with instructions for the user to copy and paste the code to your application

``` ruby
code = "copied code"
client.request_access_token(code)
client.authorized?
#=> true
```

## Analytics

Expands a short URL or gets creation time and analytics

For analytics and additional information to return (using the `:projection` parameter)

* *:full* => returns the creation timestamp and all available analytics
* *:analytics_clicks* => returns only click counts
* *:analytics_top_strings* => returns only top string counts (e.g. referrers, countries, etc)

### Get Analytics

``` ruby
url = Googl.expand('http://goo.gl/DWDfi', :projection => :full)

url.analytics.all_time.browsers.first.label
#=> "Chrome"

url.analytics.all_time.browsers.first.count
#=> "11"
```

A summary of the click analytics for the short and long URL

``` ruby
url.analytics
```

Analytics details for a particular window of time; counts in this object are of clicks that occurred within the most recent window of this length.

``` ruby
url.analytics.all_time
url.analytics.month
url.analytics.week
url.analytics.day
url.analytics.two_hours
```

Number of clicks on this short URL. Replace (*) for all_time, month, week, day or two_hours

``` ruby
url.analytics.*.short_url_clicks
```

Number of clicks on all goo.gl short URLs pointing to this long URL.

``` ruby
url.analytics.*.long_url_clicks
```

Top referring hosts, e.g. "www.google.com"; sorted by (descending) click counts. Only present if this data is available.

``` ruby
url.analytics.*.referrers
```

Top countries (expressed as country codes), e.g. "US" or "DE"; sorted by (descending) click counts.

``` ruby
url.analytics.*.countries
```

Top browsers, e.g. "Chrome"; sorted by (descending) click counts.

``` ruby
url.analytics.*.browsers
```

Top platforms or OSes, e.g. "Windows"; sorted by (descending) click counts.

``` ruby
url.analytics.*.platforms
```

For details, see http://code.google.com/intl/pt-BR/apis/urlshortener/v1/reference.html#resource_url

## History

Gets a user's history of shortened URLs. (Authenticated)

``` ruby
client = Googl.client('user@gmail.com', 'my_valid_password')

history = client.history
history.total_items
#=> 19
```

A list of URL.

``` ruby
history.items
```

Analytics details for all items

``` ruby
history = client.history(:projection => :analytics_clicks)
```

## Installation

```console
gem install googl
```

## Note on Patches/Pull Requests

*   Fork the project.
*   Make your feature addition or bug fix.
*   Add tests for it. This is important so I don't break it in a future
    version unintentionally.
*   Commit, do not mess with rakefile, version, or history. (if you want to
    have your own version, that is fine but bump version in a commit by itself
    I can ignore when I pull)
*   Send me a pull request. Bonus points for topic branches.

## License

MIT License. Copyright 2011-2015 Zigotto®. http://www.zigotto.com.br
