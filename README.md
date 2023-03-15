# README

# Docker!

## Build the App

`docker-compose build`

## Run the App

`docker-compose up`

Ctrl-C to quit

## Run a command

`docker-compose run app bash`
`docker-compose run app bundle exec rails c`
`docker-compose run app bundle exec rake db:migrate`
etc.

## Developing

Make changes in the application code while the app is running. The changes
will automatically show up. No rebuild needed.
