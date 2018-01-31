[Swarm City](https://github.com/swarmcity/sc-boardwalk-production/blob/master/images/icons/icon-48x48.png?raw=true "Swarm City")

[![Build Status](https://travis-ci.org/swarmcity/SwarmCityProxy.svg?branch=master)](https://travis-ci.org/swarmcity/SwarmCityProxy)

# Swarm City Proxy

## Introduction

The nginx proxy uses the certs to serve and cache the site securely and allows us to have fine grained access control to the site, allowing us to block single users or IP ranges instead of bringing the services down. https://www.nginx.com/

## Install dependencies

- git

   Install [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) commandline tool.

- docker

   Install [docker](https://docs.docker.com/engine/installation). The community edition (docker-ce) will work. In Linux make sure you grant permissions to the current user to use docker by adding current user to docker group, `sudo usermod -aG docker $USER`. Once you update the users group, exit from the current terminal and open a new one to make effect.

- docker-compose

   Install [docker-compose](https://docs.docker.com/compose/install)
   
**Note**:- Make sure you can run `git`, `docker ps`, `docker-compose` without any issue and without sudo command.◊
