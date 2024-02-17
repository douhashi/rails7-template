#!/bin/sh

sudo gem install bundler
bundle config set --local path /home/nonroot/.bundle
bundle install -j4

npm install

rm -f tmp/pids/server.pid

exec "$@"
