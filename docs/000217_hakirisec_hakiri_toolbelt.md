# Secure Rails with Hakiri
[![Gem Version](https://badge.fury.io/rb/hakiri.svg)](http://badge.fury.io/rb/hakiri)
[![security](https://hakiri.io/github/hakirisec/hakiri_toolbelt/master.svg)](https://hakiri.io/github/hakirisec/hakiri_toolbelt/master)

Hakiri Toolbelt is a command line interface for the Hakiri platform. It allows Ruby on Rails developers to automate version scraping of Ruby gems, servers, databases and other technologies used in their stacks. For each technology Hakiri shows CVE vulnerabilities. Here is a snippet of how it works:

~~~
$ hakiri system:scan
-----> Scanning system for software versions...
       Found Ruby 1.9.3.429
       Found Ruby on Rails 3.2.11
-----> Searching for vulnerabilities...
       Found 17 vulnerabilities in Ruby on Rails 3.2.11
Show all of them? (yes or no)

CVE-2013-0276
ActiveRecord in Ruby on Rails before 2.3.17, 3.1.x before 3.1.11, and 3.2.x before 3.2.12 allows remote attackers to bypass the attr_protected protection mechanism and modify protected model attributes via a crafted request.

...
~~~

Wanna try it on your system?

## Installation

Hakiri Toolbelt is a Ruby gem that can be installed with

~~~
$ gem install hakiri
~~~

After it's installed, restart your command line and you should be good to go. Hakiri supports Ruby 1.8.7, 1.9.x and 2.0.x.

## Test Your System in 2 Minutes

Once you have Hakiri Toolbelt installed, it's really easy to start using it. You can scan your Rails stack in a matter of seconds.

One way to do so is to run a command line wizard that will ask you about your technologies in 5 steps:

~~~
$ hakiri system:steps
~~~

After you are done, Hakiri Toolbelt will scrape versions of technologies in your stack and show you all active CVE vulnerabilities.

The wizard is a good way to get a taste of Hakiri but it's not really useful for real work. A much better setup suitable for production is a manifest file that the user can configure with technologies that are part of the stack and then run tests against it.

Hakiri Toolbelt can generate a generic manifest file with the following command:

~~~
$ hakiri manifest:generate
~~~

This will generate a `manifest.json` file in your current directory. It will contain all technologies supported by Hakiri. You can choose which ones you need by editing this file.

Once you are done, run the following command in the directory where you've created the manifest file:

~~~
$ hakiri system:scan
~~~

It will attempt to scrape versions of technologies in your current directory and then make a request to the Hakiri API to see if there are open CVE vulnerabilities. If any vulnerabilities are found, Hakiri Toolbelt will ask you whether you want to see all of them. The output will look something like this:

~~~
-----> Scanning system for software versions...
       Found Ruby 1.9.3.429
       Found Ruby on Rails 3.2.11
       Found Unicorn 4.6.3
-----> Searching for vulnerabilities...
       Found 17 vulnerabilities in Ruby on Rails 3.2.11
Show all of them? (yes or no) yes

CVE-2013-0276
ActiveRecord in Ruby on Rails before 2.3.17, 3.1.x before 3.1.11, and 3.2.x before 3.2.12 allows remote attackers to bypass the attr_protected protection mechanism and modify protected model attributes via a crafted request.

...
~~~

Simple, right? If your manifest file is in a different directory or has a different name you can specify it in a parameter:

~~~
$ hakiri system:scan -m ../my_stack.json
~~~

You can learn more about configuring the manifest in [Hakiri docs](https://hakiri.io/docs/manifest-file).

## Test Your Gemfile

To scan a `Gemfile.lock` for vulnerabilities in the current directory do the following:

~~~
$ hakiri gemfile:scan
~~~

To scan a specific `Gemfile.lock` add the `-g` parameter at the end:

~~~
$ hakiri gemfile:scan -g ../Gemfile.lock
~~~

This will scan your `Gemfile.lock` and check with the server whether it has any vulnerable gems.

You can also [sync your gems](https://hakiri.io/docs/syncing-with-the-cloud) with the cloud and get notified when new vulnerabilities come out.

## Advanced Usage

We just went through the most basic Hakiri use case. Here are links to docs describing how to do more:

- [Learn about](https://hakiri.io/docs/manifest-file) advanced manifest file options.
- [Setup your](https://hakiri.io/docs/authentication-token) authentication token.
- [Sync your technologies](https://hakiri.io/docs/syncing-with-the-cloud) with the cloud and get notified when new vulnerabilities come out.
- [Check out supported technologies](https://hakiri.io/docs/technologies-version-formats) and version formats.

## Contribute

- Fork the project.
- Write code for a feature or bug fix.
- Commit, do not make changes to version.
- Submit a pull request.

To run the gem locally use the following command: `ruby -Ilib ./bin/hakiri`.

## License

(The MIT license)

Copyright (c) 2013 Vasily Vasinov

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
