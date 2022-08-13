# README

## requirements

* asdf-vm
* ruby
* nodejs
* yarn
* direnv
* docker and docker-compose

## setup

```
cp .envrc.sample .envrc
direnv allow

bundle install -j4
yarn install

docker-compose up -d

bin/rails db:migrate:reset

bin/server
```

## guard

'''
bin/guard
'''
