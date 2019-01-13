Data securely stored in urls.

 - url-save output
 - short codes through GZip
 - serializing through __:marshal__ :yaml
 - hashing through DSS DSS1 MD2 MD4 MD5 MDC2 RIPEMD160 SHA __SHA1__ SHA224 SHA256 SHA384 SHA512

Great for:

 - password reset links
 - email unsubscribe links
 - click tracking
 - access control
 - ...

Install
=======

```Bash
gem install url_store
```

Usage
=====

When on Rails, create config/initializers/url_store.rb using generator. A random secret will be generated for you:

```Bash
rails generate url_store:initializer
```

Or configure it by hand (e.g in environment.rb):

```Ruby
UrlStore.defaults = {:secret => 'adadasd2adsdasd4ads4eas4dea4dsea4sd'}
```

In Rails views:

```Ruby
<%= link_to 'paid', :controller =>:payments, :action=>:paid, :data=>UrlStore.encode(:id=>1, :status=>'paid') %>
```

In controllers:

```Ruby
if data = UrlStore.decode(params[:data])
  Payment.find(data[:id]).update_attribute(:status, data[:status])
else
  raise 'FRAUD!'
end
```

### Defaults

```Ruby
UrlStore.defaults = {:secret => 'something random'} # ALWAYS use your own secret
UrlStore.defaults = {... , :hasher => 'MD5'} # default: 'SHA1'
UrlStore.defaults = {... , :serializer => :yaml} # default: :marshal
```

### Tips
 - if you are on rails 4.1+ take a look at `Rails.application.message_verifier`, it provides a similar feature
 - If you need multiple UrlStores, just use ` UrlStore.new(:secret => 'sadasd', ...) `
 - As long as you stay under 2k chars there should be no problems. [max url lengths per browser/server](http://www.boutell.com/newfaq/misc/urllength.html)
 - Data is not (yet) encrypted, users could read(but not change) the encoded data
 - Replay attacks are possible <-> add a timestamp to check the freshness of the encoded data

Authors
=======

### [Contributors](http://github.com/grosser/url_store/contributors)
 - [Priit Haamer](http://prii.it)
 - [Daniel Murphy](https://github.com/danielmurphy)

[Michael Grosser](http://grosser.it)<br/>
michael@grosser.it<br/>
License: MIT<br/>
[![Build Status](https://travis-ci.org/grosser/url_store.png)](https://travis-ci.org/grosser/url_store)
