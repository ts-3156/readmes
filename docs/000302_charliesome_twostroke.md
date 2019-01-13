# Twostroke

[![travis](https://secure.travis-ci.org/charliesome/twostroke.png)](http://travis-ci.org/charliesome/twostroke)

Twostroke is a Javascript implementation written in **pure Ruby**. It currently consists of:

* A hand-written parser
* A TSASM compiler (Twostroke's internal bytecode format)
* A VM that runs TSASM bytecode
* A minimal Javascript standard library implementation
* A test suite containing:
  * Some tests written for Twostroke
  * Underscore.js's complete test suite (minus the cases relying on the DOM)
  * Parts of mootools' test suite
  
# Why use Twostroke?

### It's cool:

![repl](http://i.imgur.com/HsFB0.gif)

### It actually works:

yep, that's **unmodified** underscore.js:

![tests lol](http://i.imgur.com/L4aUQ.png)