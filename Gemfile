source 'https://rubygems.org'
ruby '2.2.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'rsolr', '~> 1.0.6'
gem 'devise', '~> 3.0'
gem 'devise-guests', '~> 0.3'

gem 'active-fedora', '>= 9.4.1'

gem 'nest', '~> 2.0'
gem 'resque', '~> 1.25.2'

# Implemented in order to work-around for Issue #17
#gem 'curation_concerns', '~> 0.1.0'
gem 'curation_concerns', :git => 'https://github.com/projecthydra-labs/curation_concerns.git', :ref => '3ac56c24b42d35627d2a1444c78d1f3b23632334'
#gem 'curation_concerns-models', '~> 0.1.0'
gem 'curation_concerns-models', :git => 'https://github.com/projecthydra-labs/curation_concerns.git', :ref => '3ac56c24b42d35627d2a1444c78d1f3b23632334'

gem 'slop', '~> 3.6.0' # This just helps us generate a valid Gemfile.lock when Rails 4.2 is installed (which requires byebug which has a dependency on slop)

# @todo Structure for gemspec

# Added in response to https://github.com/projecthydra-labs/hydra-works/issues/203
gem "hydra-pcdm", :git => 'https://github.com/projecthydra-labs/hydra-pcdm.git', :ref => 'bce6accb14aba03df5210321d2e52b5008658c72'

gem 'hydra-head', '~> 9.0'
gem "breadcrumbs_on_rails", "~> 2.3.0"
gem "jquery-ui-rails"
gem "simple_form", '~> 3.1.0'

# Rake tasks were not available from the 0.1.0 Gem releast on RubyGems
# (Please see lib/tasks/geo_concerns_tasks.rake)
# @todo Properly integrate after the next stable release
gem 'hydra-works', :git => 'https://github.com/projecthydra-labs/hydra-works.git'

gem 'hydra-collections' # allow curation_concerns-models to specify the version
gem 'hydra-derivatives' # allow hydra-works to specify the version
gem 'hydra-editor'
gem 'blacklight_advanced_search', ['>= 5.1.4', '< 6.0']

group :development do
  gem 'yard'
end

group :development, :test do
#  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'bundler', '~> 1.6'

  gem 'jettywrapper'
  gem 'rake'
  gem 'rspec-its'
  gem 'rspec-rails'
  gem 'rspec-html-matchers'
  gem 'rspec-activemodel-mocks', '~> 1.0'
  gem 'capybara'
  gem 'poltergeist', '>= 1.5.0'
  gem 'factory_girl'
  gem 'database_cleaner', '< 1.1.0'

  # @todo Restructure for a gemspec
  gem "engine_cart", "~> 0.7"

  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'simplecov', '~> 0.9', require: false
  gem 'coveralls', require: false
  gem 'pry' unless ENV['CI']
  gem 'pry-byebug' unless ENV['CI']
end
