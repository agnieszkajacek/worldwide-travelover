# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'htmlentities', '~> 4.3.4'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'ancestry'
gem 'aws-sdk-s3', '~> 1.60.1'
gem 'bootstrap', '~> 4.1.1'
gem 'devise', '~> 4.4'
gem 'disqus_rails'
gem 'fastimage', '~> 2.1'
gem 'font-awesome-rails'
gem 'font-awesome-sass'
gem 'friendly_id', '~> 5.2.4'
gem 'image_processing', '~> 1.12.2'
gem 'jquery-rails'
gem 'lol_dba', '~> 2.1', '>= 2.1.8'
gem 'pagy', '~> 3.7', '>= 3.7.2'
gem 'pg_search', '~> 2.3', '>= 2.3.2'
gem 'pghero'
gem 'popper_js', '~> 1.12.9'
gem 'rails-i18n', '~> 5.1.2'
gem 'rake'
gem 'redcarpet'
gem 'rubocop', '~> 0.74.0', require: false
gem 'sendgrid-actionmailer'
gem 'shrine', '~> 2.19.3'
gem 'simple_form'
gem 'sitemap_generator', '~> 5.1'
gem 'sucker_punch', '~> 2.0'
gem 'traceroute', '~> 0.8.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.7', '>= 2.7.1'
  gem 'chromedriver-helper'
  gem 'dotenv-rails'
  gem 'pry'
  gem 'rspec-rails', '~> 3.4', '>= 3.4.2'
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.4'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'bullet', '~> 6.1'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner', '~> 1.7'
  gem 'factory_bot_rails', '~> 5.0.2'
  gem 'rails-controller-testing', '~> 1.0.4'
  gem 'shoulda-matchers'
  gem 'shrine-memory'
  gem 'webmock', '~> 3.8.1'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'http', '~> 4.1'
