# Dockerfile
# gets the docker parent image
FROM ruby:3.2.1

RUN apt-get update

RUN mkdir -p /var/app
COPY . /var/app
WORKDIR /var/app

RUN bundle install

CMD rails s -b 0.0.0.0
