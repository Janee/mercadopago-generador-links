# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.4'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'jbuilder', '~> 2.5'
gem 'mercadopago-sdk'
gem 'mini_racer', platforms: :ruby
gem 'pg'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.1', '>= 5.2.1.1'
gem 'roo', '~> 2.7.0'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'uglifier', '>= 1.3.0'
group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 3.8'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
end
