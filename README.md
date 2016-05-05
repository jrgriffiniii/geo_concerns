# Geo Concerns
[![Build Status](https://travis-ci.org/projecthydra-labs/geo_concerns.svg)](https://travis-ci.org/projecthydra-labs/geo_concerns)
[![Coverage Status](https://coveralls.io/repos/github/projecthydra-labs/geo_concerns/badge.svg?branch=master)](https://coveralls.io/github/projecthydra-labs/geo_concerns?branch=master)
[![API Docs](http://img.shields.io/badge/API-docs-blue.svg)](http://www.rubydoc.info/github/projecthydra-labs/geo_concerns)

Rails application for developing Hydra Geo models. Built around Curation Concerns engine.

* [Poster from Hydra Connect 2015](https://drive.google.com/file/d/0B5fLh2mc4FCbOUpWaTFOVmI4Nkk/view?pli=1)
* [Current GeoConcerns diagram](https://github.com/projecthydra-labs/geo_concerns/raw/master/docs/pcdm-geo-model.pdf)


## Dependencies

1. Solr
1. [Fedora Commons](http://www.fedora-commons.org/) digital repository
1. A SQL RDBMS (MySQL, PostgreSQL), though **note** that SQLite will be used by default if you're looking to get up and running quickly
1. [Redis](http://redis.io/), a key-value store
1. [ImageMagick](http://www.imagemagick.org/) with JPEG-2000 support
1. [GDAL](http://www.gdal.org/)
    * You can install it on Mac OSX with `brew install gdal`.
    * On Ubuntu, use `sudo apt-get install gdal-bin`.

## Installation

Create and run a new GeoConcerns application from a template:

```
$ rails new app-name -m https://raw.githubusercontent.com/projecthydra-labs/geo_concerns/master/template.rb
$ cd app-name
$ rake hydra:server
```

Add GeoConcerns models to an existing CurationConcerns application:

1. Add `gem 'geo_concerns'` to your Gemfile.
2. `bundle install`
3. `rails generate geo_concerns:install`

## Development

1. `bundle install`
2. `rake engine_cart:generate`
3. `rake geo_concerns:dev_servers`
4. `cd .internal_test_app && rails s`

## Testing

3. `rake ci`

To run tests separately:

```
$ rake geo_concerns:test_servers
```

Then, in another terminal window:

```
$ rake spec
```
