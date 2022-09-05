# rrr_2022

[![](https://img.shields.io/badge/React-18.2.0-orange.svg)](https://reactjs.org) [![](https://img.shields.io/badge/parcel-2.7.0-royalblue.svg)](https://parceljs.org/) [![](https://img.shields.io/badge/Node.js-16.17.0-yellowgreen.svg)](https://nodejs.org/en/) [![](https://img.shields.io/badge/Ruby-3.1.2p20-red.svg)](https://www.ruby-lang.org/en/) [![](https://img.shields.io/badge/Rails-7.0.3.1-red.svg)](https://rubyonrails.org/) [![](https://img.shields.io/badge/Docker-blue.svg)](https://www.docker.com/) [![](https://img.shields.io/badge/Postgres-13.0-lightblue.svg)](https://hub.docker.com/_/postgres)

This repo demonstrates how to use ReactJS to build a fancy new frontend along with Ruby on Rails with backing Postgres DB using Docker. 

## Installation

You'll need:

1. [Docker](https://www.docker.com/)
2. [Node](https://github.com/coreybutler/nvm-windows)
3. [Ruby](https://www.ruby-lang.org/en/) - make sure to install with MYSYS2 and with the DevKit (the dependency is required for Rails)
4. [pgadmin](https://www.pgadmin.org/)

### Ruby

```Bash
gem bundle install
gem update bundler
cd ./_ruby
bundle install
```

### React Client

```Bash
nvm install 16.17.0
nvm use 16.17.0
npm i
npm i npx
```

## Use

You can launch the example app individually or using Docker Compose.

### Docker Compose

### Postgres Docker

See [the Docker directory](_docker/1%20-%20dockerfile/docker.sh).

### React Client

> From within the [React](_react) directory.

Start it up:

```ZSH
npm run build-parcel-prod
npm run build-parcel
cd dist
npx serve
```

One gotcha: https://github.com/parcel-bundler/parcel/issues/7636. If you add to [package.json](./_react/package.json)

```JSON
  "engines": {
    "node": "=16.17.0"
  }
```

You'll get: `@parcel/packager-js: External modules are not supported when building for browser`. Remove the `engines` field.

> By default, NPX and parcel will serve from: http://localhost:1234/

Shut it down:

```ZSH
npm run stop-win
nom run stop-linux
```

### Rails

> From within the [Ruby/Web](_ruby/web) directory.

```ZSH
rails db:create
rails db:migrate
rake db:seed
rails server --binding=127.0.0.1
```

> By default, the Ruby on Rails server will server from: http://localhost:3000/

Migrations:

```ZSH
bin/rails generate migration ExampleMigration
rails db:migrate
# rake db:migrate
```

Reset DB:
```ZSH
# run migration and seeding
rails db:setup 
# rails db:create
# rails db:migrate
# rake db:seed

rails db:reset
```

Create Model and Table:

```ZSH
rails g model Dinosaur name:text
rails g model BabyDino name:text
```

Create Controller:

```ZSH
rails g controller Dinosaurs
```

## Helpful Resources

1. https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-macos
2. https://bobbyhadz.com/blog/react-router-not-found-page
3. https://www.tutorialspoint.com/ruby-on-rails/rails-migrations.htm
4. https://apidock.com/rails/ActiveRecord/Base/create/class
5. https://ninjadevel.com/seeding-database-ruby-on-rails/
6. https://www.digitalocean.com/community/tutorials/build-a-restful-json-api-with-rails-5-part-one#api-endpoints
7. https://www.tutorialspoint.com/ruby-on-rails/rails-routes.htm
8. https://dev.to/caicindy87/rendering-json-in-a-rails-api-25fd