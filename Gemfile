source 'https://rubygems.org'

ruby '2.4.2'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
# JQuery
gem 'jquery-rails'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 3.0'
# Use simple_form
gem 'simple_form'
# gem "subdivision_select"
# Add devise for user authentication
gem 'devise'
gem 'devise-uncommon_password'
# Omniauth
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
# gem 'omniauth-github'
# File upload
# gem 'paperclip'
gem 'carrierwave'
gem 'mini_magick'
# Add responder
gem 'responders'
# Add haml
gem 'haml'
gem 'html2haml'
# Country select
gem 'country-select'
# gem 'country_state_select', git: 'git://github.com/arvindvyas/Country-State-Select', branch: :master
# Bootstrap
gem 'bootstrap', '~> 4.0.0.alpha6'
# Open iconic
gem 'open-iconic-rails'
# Pagination
# gem 'bootstrap-will_paginate'
gem 'will_paginate'
gem 'kaminari'
# Ratyrate
gem 'ratyrate'
# Lodash
gem 'lodash-rails'
# Axios
gem 'axios_rails'
# Google map
# gem 'gmaps4rails'
# Summernote
gem 'summernote-rails'
# Font-awesome
gem 'font-awesome-rails'
# Light Gallery
gem 'lightgallery-rails'
# Modernizr
gem 'modernizr-rails'
# Animate
gem 'animate-rails'
# Algolia
# gem 'algoliasearch-rails'
# Sidekiq
gem 'sidekiq'
# Hogan
gem 'hogan_assets'
# Typeahead
# gem 'twitter-typeahead-rails'
# gem 'bootstrap-typeahead-rails'
# Friendly id
gem 'friendly_id', '~> 5.1.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  # Use guard to monitor development tests
  gem 'guard'
  gem 'guard-minitest'
  gem 'minitest-reporters'
  gem 'rails-controller-testing'
  gem 'dotenv-rails'
end

group :development do
  gem 'binding_of_caller'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Add hirb for db table
  gem 'hirb'
  # Better errors
  gem 'better_errors'
  # Letter opener
  gem "letter_opener", :group => :development
  # Use Capistrano for deployment
  # gem 'capistrano-rails', group: :development
end

group :production do
  # Use postgres as the database for Active Record
  # gem 'pg'
  # Use rails_12factor
  gem 'rails_12factor'
  # Use unicorn for production
  gem 'unicorn'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
