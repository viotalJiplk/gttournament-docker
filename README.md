# gttournament-docker
This is version of gttournament's website, but inside docker. It is easier to verify that it would run on host's machine and it can be started and shutdown  with one command.
It does not create mess on host. (usualy)

## Prerequisites
You must have docker (with compose) installed. Most images are based on alpine so you should use linux as host.

## Running it
Clone this repository, rename a copy of .env-template, change secretPassword to something safe, and run:\
`sudo docker compose build`\
`sudo docker compose up -d`

By default you should be able to connect to it in your browser [http://localhost:8423](http://localhost:8423).

## Creating/recreating database
If recreating/changing password Run `sudo docker volume rm gtt-docker_db-data`\
RUN: `sudo docker container exec gtt-mariadb ./createdb.sh`\
**Warning: This will delete all previous records!**

## What it does under the hood
It creates an environment for each part of the site to run, clones the code for each part from its git repositories, builds it and runs it.

## Repositories
Frontend: [https://github.com/Vitond/gttournament](https://github.com/Vitond/gttournament).\
Backend: [https://github.com/Vitond/gttournament-backend](https://github.com/Vitond/gttournament-backend).