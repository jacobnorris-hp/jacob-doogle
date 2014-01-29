source 'https://rubygems.org'
ruby '2.1.0'

gem 'heroku_san'
gem 'jquery-rails'
gem 'nokogiri'
gem 'pg'
gem 'rails'
gem 'faraday'
gem 'factory_girl_rails'
gem 'webmock'

group :production do
  gem 'rails_12factor'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'protected_attributes'
end

group :test do
  gem 'capybara'
  gem 'launchy'
end

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
