# Geo Concerns
[![Build Status](https://travis-ci.org/jrgriffiniii/geo_concerns.svg?branch=jrgriffiniii-issues-16)](https://travis-ci.org/jrgriffiniii/geo_concerns)
[![Coverage Status](https://coveralls.io/repos/jrgriffiniii/geo_concerns/badge.svg?branch=jrgriffiniii-issues-16&service=github)](https://coveralls.io/github/jrgriffiniii/geo_concerns?branch=jrgriffiniii-issues-16)
[![API Docs](http://img.shields.io/badge/API-docs-blue.svg)](http://rubydoc.info/github/projecthydra-labs/geo_concerns)

Rails application for developing Hydra Geo models. Built around Curation Concerns engine.

## Installation

Execute:

```
    $ bundle
```

Then:

```
    $ rake db:migrate
    $ rake db:test:prepare
    $ rake jetty:clean
    $ rake curation_concerns:jetty:config
    $ rake jetty:start
    $ rails server
```

# Usage

## Generator

To generate a new CurationConcern type, use the `curation_concerns:work` rails generator.  Follow the Usage instructions provided on the command line when you run:

    rails generate curation_concerns:work

## Testing

```
    $ rake spec
```
