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
npm i
npm i npx
```

## Use

You can launch the example app individually or using Docker Compose.

### Docker Compose

### Postgres Docker

### React Client

Start it up:

```ZSH
npm run build-parcel-prod
npm run build-parcel
```

After you've compiled the React app the first time, you can skip building and load the static app directly via:

```ZSH
# Parcel
npx serve

# Webpack
npm run live 
```

> You may need to uncomment or comment out the correct line (**44**) in [index.html](public/index.html#L44)

> By default, the http server will serve from http://localhost:1234/ or http://localhost:8181

Shut it down:

```ZSH
npm run stop-win
nom run stop-linux
```
