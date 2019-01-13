# Haste Client

[![Build Status](https://secure.travis-ci.org/seejohnrun/haste-client.png)](http://travis-ci.org/seejohnrun/haste-client)

haste-client is a simple client for uploading data to haste-server.  All you do it pipe data in STDIN:

`cat file | haste`

And once the output makes it to the server, it will print the URL to STDOUT.

This can be really really cool in combination with `pbcopy`, like:

* mac osx: `cat file | haste | pbcopy`
* linux: `cat file | haste | xsel`

after which the contents of `file` will be accessible at a URL which has been copied to your pasteboard.

## Installation

``` bash
gem install haste
```

## Making uploading file contents easier

If you supply a valid file path as argument #1 to the client, it will be uploaded:

``` bash
# equivalent
cat file | haste
haste file
```

## You can get the raw version

Want the raw URL returned instead? (a plain-text version)?

``` bash
cat file | haste --raw # or
haste file --raw
```

## Changing the location of your haste server

By default, haste will point at `https://hastebin.com`.  You can change this by setting the value of `ENV['HASTE_SERVER']` to the URL of your haste server.  You can also use `alias` to make easy shortcuts if you commonly use a few hastes intermingled with each other.  To do that, you'd put something like this into ~.bash_profile:

``` bash
alias work_haste="HASTE_SERVER=https://something.com haste"
```

After which you can use `work_haste` to send hastes to that server instead.

## Use as a library

You can also use `Haste` as a library to upload hastes:

``` ruby
require 'haste'
uploader = Haste::Uploader.new
uploader.upload_raw 'this is my data' # key
uploader.upload_path '/tmp/whaaaa' # key
```

## Windows Support

If you'd like an alternative on Windows that supports functionality similar to `pbcopy`, check out Aidan Ryan's [WinHaste](https://github.com/ajryan/WinHaste) project.

## Lightweight Alternative

Han Boetes and @nickthename have contributed a simple shell-script alternative for those not interested in installing a RubyGem:

``` bash
haste() { a=$(cat); curl -X POST -s -d "$a" https://hastebin.com/documents | awk -F '"' '{print "https://hastebin.com/"$4}'; }
```

Usage:

``` bash
cat file.txt | haste
```

And a more expansive BASH option by @diethnis can be found at:
https://github.com/diethnis/standalones/blob/master/hastebin.sh

## Author

John Crepezzi <john.crepezzi@gmail.com>

## License

(The MIT License)

Copyright © 2011 John Crepezzi

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the ‘Software’), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED ‘AS IS’, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE
