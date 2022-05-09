source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"
gem "rails", "~> 7.0.2", ">= 7.0.2.4"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
gem "jsbundling-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"


# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
 gem "sassc-rails"

# gem "image_processing", "~> 1.2"
gem 'will_paginate'
gem "breadcrumbs_on_rails"


# Use SCSS for stylesheets
gem 'bootstrap'
gem 'jquery-rails' 
#gem 'font_awesome5_rails'
gem "mime-types"
#gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'main'
gem  "will_paginate-bootstrap"

group :development, :test do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "web-console"
  gem "sqlite3", "~> 1.4"
end

group :production do 
   gem "pg"
end
group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
