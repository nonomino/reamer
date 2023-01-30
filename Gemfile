source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby "3.2.0"

gem "rails", "~> 7.0.4"
gem "sprockets-rails"
gem "tzinfo-data"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "bcrypt", "~> 3.1.7"
gem "devise"
gem 'rails-trash', :github => 'trilogyinteractive/rails-trash'
# gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "letter_opener"
  gem "byebug"
  gem "pry-rails"
end

group :development do
  gem "web-console"
  gem "sqlite3"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "carrierwave", "~> 2.2"

gem "simple_form", "~> 5.1"

gem "rails-erd", "~> 1.7"
