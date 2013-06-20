source 'https://rubygems.org'

gem 'rails', '3.2.13'


# https://github.com/plataformatec/devise
# Flexible authentication solution for Rails with Warden
gem 'devise'

# https://github.com/sj26/mailcatcher
# Catches mail and serves it through a dream. 
gem 'mailcatcher'

group :development do

  # Ruby bindings for the SQLite3 embedded database 
  # https://github.com/luislavena/sqlite3-ruby
  gem 'sqlite3'

end

group :test do

  # Makes tests easy on the fingers and the eyes
  # https://github.com/thoughtbot/shoulda
  gem 'shoulda'

  # Rspec-2 for Rails-3
  # https://github.com/rspec/rspec-rails
  gem "rspec-rails"

  # Acceptance test framework for web applications 
  # https://github.com/jnicklas/capybara
  gem 'capybara'

  # Code coverage for Ruby 1.9+ with a powerful configuration library and automatic merging of coverage across test suites
  # https://github.com/colszowka/simplecov
  gem 'simplecov'

end

group :production do

  # Pg is the Ruby interface to the {PostgreSQL RDBMS}
  # https://bitbucket.org/ged/ruby-pg/wiki/Home
  gem 'pg'

end

# Gems used only for assets and not required
# in production environments by default.
group :assets do

  # Ruby on Rails stylesheet engine for Sass
  # https://github.com/rails/sass-rails
  gem 'sass-rails',   '~> 3.2.3'
  
  # CoffeeScript adapter for the Rails asset pipeline.
  # https://github.com/rails/coffee-rails
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  # https://github.com/lautis/uglifier
  # Ruby wrapper for UglifyJS JavaScript compressor.
  gem 'uglifier', '>= 1.0.3'


end


# A gem to automate using jQuery with Rails 3 
# https://github.com/indirect/jquery-rails
gem 'jquery-rails'
