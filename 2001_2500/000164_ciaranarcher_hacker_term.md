hacker_term
==========
Hacker News on the Terminal.

![Screenshot](http://flydillonfly.files.wordpress.com/2013/01/hacker_term_png1.png)

Requirements
------------
* Ruby 1.9.3

Installation
------------
* Install with `gem install hacker_term`
* Run using `hacker_term`
* Tests included; I run them using `rspec -fd` in the project directory

Overview
--------
See the front page of HN, use the arrow keys to browse and open particular items in the default system browser.

* Uses the Ruby `curses` library to create a terminal UI.
* Captures keyboard events to allow browsing of the HN front page from the terminal.
* Tested (and looks colourful) on OSX Mountain Lion, but some functionality may be lost on other flavours of Linux. 
* Not tested and verified on anything other than the basic OSX terminal application - but may well work anyway.
* Uses the HN feed available at http://hndroidapi.appspot.com - without that resource this project would not exist.
* Sorting options included.
* Some stats included.
* Blog post here: http://flydillonfly.wordpress.com/2013/01/01/hacker-news-in-your-terminal/

Background
----------
This project was created to allow me to scratch a particular programming itch after reading about https://github.com/etsy/mctop. It brought me back to my days in college coding in C where everything was a terminal program!

Please enjoy/contribute/ignore as you see fit.

[![Build Status](https://travis-ci.org/ciaranarcher/hacker_term.png)](https://travis-ci.org/ciaranarcher/hacker_term)
