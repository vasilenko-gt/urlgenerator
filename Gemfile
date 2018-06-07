source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails'                                             # Ruby framework.
gem 'pg'                                                # Use postgresql as the database for Active Record.
gem 'puma'                                              # Use Puma as the app server.
gem 'figaro'                                            # Simple Rails app configuration
gem 'haml-rails'                                        # Haml-rails provides Haml generators for Rails.
gem 'sass-rails'                                        # Use SCSS for stylesheets.
gem 'jquery-rails'                                      # Plugin Jquery.
gem 'coffee-rails'                                      # Use CoffeeScript for .coffee assets and views.
gem 'jbuilder'                                          # Jbuilder: generate JSON objects with a Builder-style DSL
gem 'bootstrap', '~> 4.1.0'                             # Bootstrap 4 Ruby Gem for Rails / Sprockets and Compass.
gem 'devise-bootstrap-views'                            # Devise views with Bootstrap 3, Used Bootstrap responsive columns, I18n Support.
gem 'bootsnap'                                          # Boot large Ruby/Rails apps faster.
gem 'devise'                                            # Flexible authentication solution for Rails with Warden.
gem 'redis'                                             # A Ruby client library for Redis
gem 'autoprefixer-rails'                                # Autoprefixer for Ruby and Ruby on Rails https://twitter.com/autoprefixer
gem 'google_custom_search_api'                          # Ruby lib for Google's Custom Search API
gem 'uglifier'                                          # Use Uglifier as compressor for JavaScript assets.
gem 'turbolinks'                                        # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks.
gem 'select2-rails'                                       # Integrate Select2 javascript library with Rails asset pipeline https://github.com/argerim/select2-rails
gem 'simple_form', github: 'plataformatec/simple_form'  # Simple forms made easy.

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]