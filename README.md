# Geo Concerns
[![Build Status](https://travis-ci.org/projecthydra-labs/pcdm-geo-models.svg)](https://travis-ci.org/projecthydra-labs/pcdm-geo-models)
[![Coverage Status](https://coveralls.io/repos/projecthydra-labs/pcdm-geo-models/badge.svg&service=github)](https://coveralls.io/github/projecthydra-labs/pcdm-geo-models)
[![API Docs](http://img.shields.io/badge/API-docs-blue.svg)](http://rubydoc.info/github/projecthydra-labs/pcdm-geo-models)

Rails application for developing Hydra Geo models. Built around Curation Concerns engine.

* [Poster from Hydra Connect 2015](https://drive.google.com/file/d/0B5fLh2mc4FCbOUpWaTFOVmI4Nkk/view?pli=1)
* [Current GeoConcerns diagram](https://github.com/projecthydra-labs/geo_concerns/raw/master/docs/pcdm-geo-model.pdf)

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

## Testing

```
    $ rake spec
```
