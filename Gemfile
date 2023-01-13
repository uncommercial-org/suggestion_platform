# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'pg', '~> 1.4'
gem 'puma', '~> 6.0'
gem 'rails', '~> 7.0.4'

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', require: false

gem 'active_model_serializers', '~> 0.10.13'
gem 'rack-cors', '~> 1.1'

gem 'dotenv-rails', '~> 2.8'

gem 'sentry-rails'
gem 'sentry-ruby'

group :development, :test do
  gem 'byebug'

  gem 'rubocop', '~> 1.37'
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false

  gem 'factory_bot', '~> 6.2.1'
  gem 'faker',       '~> 2.22'
  gem 'rspec-rails', '~> 5.1'

  gem 'rswag-specs', '~> 2.6.0'
end

group :test do
  gem 'database_cleaner-active_record', '~> 2.0.1'
  gem 'simplecov', '~> 0.21.2', require: false
  gem 'webmock', '~> 3.18.1'
end

group :development do
  gem 'annotate', '~> 3.2.0'
end
