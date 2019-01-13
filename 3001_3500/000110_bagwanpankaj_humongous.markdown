<a href='https://pledgie.com/campaigns/24601' style="float:right"><img alt='Click here to lend your support to: Humongous  and make a donation at pledgie.com !' src='https://pledgie.com/campaigns/24601.png?skin_name=chrome' border='0' ></a>
<div style="clear:both;"></div>
# Humongous

[![Gem Version](https://badge.fury.io/rb/humongous.png)](http://badge.fury.io/rb/humongous)

     _   _
    | | | |_   _ _ __ ___   ___  _ __   __ _  ___  _   _ ___
    | |_| | | | | '_ ` _ \ / _ \| '_ \ / _` |/ _ \| | | / __|
    |  _  | |_| | | | | | | (_) | | | | (_| | (_) | |_| \__ \
    |_| |_|\__,_|_| |_| |_|\___/|_| |_|\__, |\___/ \__,_|___/
                                       |___/



Humongous: A Ruby way to browse and maintain MongoDB instances, using HTML5.

## Installation

#### Command Line Utility

Install the gem by running:

    gem install humongous

and run on terminal/console

    humongous

And you are good to go it will open this in a browser or you can navigate it on port [9000](http://0.0.0.0:9000)
to stop the server run the command again with -K option

    humongous -K

Command line options:

| **Options**           | **What value do they take**                                         |
|:----------------------|--------------------------------------------------------------------:|
| -K or --kill          | kill the running process and exit                                   |
| -S, --status          | display the current running PID and URL then quit                   |
| -s, --server SERVER   | serve using SERVER (thin/mongrel/webrick)                           |
| -o, --host HOST       | listen on HOST (default: 0.0.0.0)                                   |
| -p, --port PORT       | use PORT (default: 9000)                                            |
| -x, --no-proxy        | ignore env proxy settings (e.g. http_proxy)                         |
| -F, --foreground      | don't daemonize, run in the foreground                              |
| -L, --no-launch       | don't launch the browser                                            |
| -d, --debug           | raise the log level to :debug (default: :info)                      |
| --app-dir APP_DIR     | set the app dir where files are stored("~/.humongous")              |
| -h, --help            | Show this message                                                   |


## Credits

* [MongoHub](http://mongohub.todayclose.com/) (For giving inspiration for simplest UI and navigation.)

## More Info

For detailed info visit my blog [http://BagwanPankaj.com](http://bagwanpankaj.com) and/or [http://github.bagwanpankaj.com/humongous/](http://github.bagwanpankaj.com/humongous/)

For more info write me at me[at]bagwanpankaj.com

## Support

Currently it only supports Ruby version >= 1.8.7. Humongous has been tested against MRI 18, MRI 19 and JRuby.

## TODO's

There are lot of things and area to improve and develop. Since it in pre release now, any bug report, issues and feature request is highly appreciated.

* Error Handling [DONE]
* Authentication module [DONE]
* Sophisticated Querying support [DONE]
* Better UI (need a real contribution here) [In Progress]
* Better documentation
* Example series

## Contributing to Humongous

* Fork, branch, code, and then send me a pull request. :)

## Copyright

Copyright (c) 2012-2016 [Bagwan Pankaj]. See LICENSE.txt for further details.

