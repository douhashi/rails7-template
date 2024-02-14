# Rails7 Template Repository

## This template includes

* [view_component](https://github.com/ViewComponent/view_component) and [view_component-contrib](https://github.com/palkan/view_component-contrib)
    * and Common UI component implements
* Dockerfile and docker-compose.yml for development
* Rspec
* and some useful gems.

## requirements

* direnv
* docker and docker-compose

## Getting started

```
cp .envrc.sample .envrc
direnv allow

docker compose run app bin/rails db:migrate:reset
docker compose up -d
```

