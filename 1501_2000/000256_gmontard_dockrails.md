[![Gem Version](https://badge.fury.io/rb/dockrails.svg)](https://badge.fury.io/rb/dockrails) [![Build Status](https://travis-ci.org/gmontard/dockrails.svg?branch=master)](https://travis-ci.org/gmontard/dockrails) [![Coverage Status](https://coveralls.io/repos/github/gmontard/dockrails/badge.svg?branch=master)](https://coveralls.io/github/gmontard/dockrails?branch=master)

![](http://i.imgur.com/GpOR4F5.png)

Simple CLI to Generate and Run a Rails environment with Docker!   
---
(using Docker, Docker-Compose and Docker-Sync behind the scenes)

### About

Many of us have been struggling to setup a **usable** and **efficient** docker development environment for Rails App

This Gem include a CLI that generate your docker environment then provide a simple command to run it.

Web/Job containers **sync code base from your Rails App in realtime**, letting you code on you Mac and run in the same time everything from the container

Bundler Gems, DB and Redis data are **persisted across restart** and you can use **ByeBug or Pry out of the box** easily.

Currently the CLI offers a Docker environment with the option of:
- PGSQL or MYSQL Database
- Redis Database
- Web and Job (Sidekiq) container

You can expand this scope very easily by modifying the output docker files generated.

[![asciicast](https://asciinema.org/a/26tls9e5bh860ai91d7grkkf6.png)](https://asciinema.org/a/26tls9e5bh860ai91d7grkkf6)

### Install

```gem install dockrails```

### Requirements

- [Docker Toolbox](https://www.docker.com/products/docker-toolbox)
- ```brew install unison```

### Commands

Create a folder on top of your Rails App, add your App inside it, then run:
- ```dockrails init```

*Answer the different questions to build your docker environment and then you are ready to run it!*

Start the containers:
- ```dockrails start```

Stop/Remove the containers:
- ```dockrails clean```

Show live tail of logs:
- ```dockrails logs```

Show live tail of logs for a container:
- ```dockrails logs web```

Build/Rebuild the docker image:
- ```dockrails build```

Restart a container:
- ```dockrails restart CONTAINER```

Run a command inside a container:
- ```dockrails run CONTAINER COMMAND``` (ex: dockrails run web bundle install)

Attach TTY to a container (ex: for debugging with ByeBug or Pry):
- ```dockrails attach CONTAINER```


### Folder structure

```
my-docker-rails-env/
  bundle/
  data/
    sql/
    redis/
  Dockerfile
  docker-compose.yml
  docker-sync.yml
  YOUR_RAILS_APP/
```
