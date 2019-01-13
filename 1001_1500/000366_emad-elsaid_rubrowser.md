# Rubrowser (Ruby Browser)

[![Gem Version](https://badge.fury.io/rb/rubrowser.svg)](https://badge.fury.io/rb/rubrowser)
[![Build Status](https://travis-ci.org/emad-elsaid/rubrowser.svg?branch=master)](https://travis-ci.org/emad-elsaid/rubrowser)


a visualizer for ruby code (rails or otherwise), it analyze your code and
extract the modules definitions and used classes/modules and render all these
information as a directed force graph using D3.

### Note:

Starting from version 2.0.0 the project is no longer an http server, it
generates one HTML file that is self-contained, data and script and html in one
file, so you can generate it in your CI build and publish it as part of your
documentation

this project is so small that the visualization looks like so

![rubrowser visualization](https://i.imgur.com/zKjc7G5.png)

the idea is that the project opens every `.rb` file and parse it with `parser`
gem then list all modules and classes definitions, and all constants that are
listed inside this module/class and link them together.

Here are some output examples

| Gem                   | Visualization                                 |
| -------------         | :-------------:                               |
| rack-1.6.4/lib        | ![rake](http://i.imgur.com/4UsCo0a.png)       |
| actioncable-5.0.0/lib | ![acioncable](http://i.imgur.com/Q0Xqjsz.png) |
| railties-5.0.0/lib    | ![railties](http://i.imgur.com/31g10a1.png)   |

there are couple things you need to keep in mind:

* if your file doesn't have a valid ruby syntax it won't be parsed and will
  print warning.
* if you reference a class that is not defined in your project it won't be in
  the graph, we only display the graph of classes/modules you defined
* it statically analyze the code so meta programming is out of question in here
* rails associations are meta programming so forget it :smile:

## Installation


```
gem install rubrowser
```

## Usage


```
Usage: /home/emad/code/rubrowser/bin/rubrowser [options] [file] ...
    -o, --output=FILE                output file page, if not specified output will be written to stdout
    -l, --layout=FILE                layout file to apply on the resulting graph
    -s, --server=SERVER:PORT         rubrowser server for execution monitoring
    -T, --no-toolbox                 Don't display toolbox on the page
    -v, --version                    Print Rubrowser version
    -h, --help                       Prints this help
```

if you run it without any options
```
rubrowser
```

it'll analyze the current directory and print out an HTML file, so you can write
it to a file, and open it in your browser

```
rubrowser > output.html
```

## Monitoring your application execution

Add rubrowser to your ruby project `Gemfile`
```
gem 'rubrowser'
```

Add the following code before your application runs, if it's a rails project
this should be an initializer

```
Rubrowser::Monitor.run(path: Rails.root.to_s, port: 8080)
```

path is your code path, and port is the execution websocket server port, the
server will open that port and announce any execution happens to the code inside
your project directory.

now generate a rubrowser HTML output that connect to your server

```
rubrowser -slocalhost:8080 > output.html
```

## Using a saved layout

When you move classes/modules in the graph to fix them in one place, then you
refresh the page, you'll reset the graph again.

for that reason there is a button to download the current graph state as json file (fixed
nodes positions), when you generate the graph again you can pass that file to
rubrowser to embed it inside the output HTML file.

```
rubrowser -l layout.json
```

I recommend putting that file in your project and name it `.rubrowser` in that
case it'll be easy to use it whenever you generate the graph.

```
rubrowser -l .rubrowser
```

So that in the future probably rubrowser can pick the file automatically, if you
follow that naming, your project will be ready in that case.

## Features

* trace your execution in realtime on the graph
* interactive graph, you can pull any node to fix it to some position
* to release node double click on it
* zoom and pan with mouse or touch pad
* highlight node and all related nodes, it'll make it easier for you to see what
  depends and dependencies of certain class
* highlight nodes by names or file path
* ignore node by name, or file path
* ignore nodes of certain type (modules/classes)
* hide namespaces
* hide relations
* change graph appearance (collision radius)
* stop animation immediately
* fix all nodes in position or release all fixed nodes
* Module/class circle size on the graph will be relative to module number of
  lines in your code
* cyclical dependencies are marked in red
* after you move nodes around, you can download the layout as a file, then
  provide it when generating the graph file again with `-l file.json` it will
  embed the layout in the file and the graph will have the same layout by
  default.

## Why?

Because i didn't find a good visualization tool to make me understand ruby
projects when I join a new one.

it's great when you want to get into an open source project and visualize the
structure to know where to work and the relations between modules/classes.
