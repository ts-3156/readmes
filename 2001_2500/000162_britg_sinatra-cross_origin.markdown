## About
A simple Sinatra extension to enable Cross Domain Resource Sharing (CORS)
To see more on cross domain resource sharing, see https://developer.mozilla.org/En/HTTP_access_control

## Installation with Bundler
    gem "sinatra-cross_origin", "~> 0.3.1"

## Examples

To enable cross origin requests for all routes:

    require 'sinatra'
    require 'sinatra/cross_origin'
 
    configure do
      enable :cross_origin
    end

To only enable cross origin requests for certain routes:

    get '/cross_origin' do
      cross_origin
      "This is available to cross-origin javascripts"
    end

If you're using a modular application, remember to register this extension:

``` ruby
register Sinatra::CrossOrigin
```

## Global Configuration

You can set global options via the normal Sinatra set method:
    
    set :allow_origin, :any
    set :allow_methods, [:get, :post, :options]
    set :allow_credentials, true
    set :max_age, "1728000"
    set :expose_headers, ['Content-Type']

You can change configuration options on the fly within routes with:
    
    get '/custom' do
      cross_origin :allow_origin => 'http://example.com',
        :allow_methods => [:get],
        :allow_credentials => false,
        :max_age => "60"

      "My custom cross origin response"
    end

## Responding to `OPTIONS`
Many browsers send an `OPTIONS` request to a server before performing a CORS request (this is part of [the specification for CORS](http://www.w3.org/TR/cors/) ). These sorts of requests are called [preflight requests](https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS#Preflighted_requests). Without a valid response to an `OPTIONS` request, a browser may refuse to make a CORS request (and complain that the CORS request violates the same-origin policy).

Currently, this gem does not properly respond to `OPTIONS` requests. See [this issue](https://github.com/britg/sinatra-cross_origin/issues/18). You may have to add code like this in order to make your app properly respond to `OPTIONS` requests:

    options "*" do
      response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
     
      response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
     
      200
    end



## License
Copyright (c) 2007, 2008, 2009 Brit Gardner

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
