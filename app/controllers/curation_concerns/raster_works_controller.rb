# Generated via
#  `rails generate curation_concerns:work RasterWork`

class CurationConcerns::RasterWorksController < ApplicationController
  include CurationConcerns::CurationConcernController
  set_curation_concern_type RasterWork
end