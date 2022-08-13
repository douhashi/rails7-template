source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

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

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails', '~> 5.1.0'
  gem 'shoulda-matchers', '~> 5.0'
end

group :development do
  gem "web-console"

  gem 'guard'
  gem 'guard-rspec'
  gem 'listen'
  gem 'pgreset'
  gem "rack-mini-profiler", require: false

  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-rubycw', require: false
end

# Test data
gem 'factory_bot_rails'

# Proccess management
gem 'foreman'

# Front-end framework
gem 'vite_rails'

# Pagination / Enum
gem 'enumerize'
gem 'kaminari'

# Health check
gem 'okcomputer'

# Background jobs (Sidekiq)
# gem 'redis-namespace'
# gem 'sidekiq'

# Authentication
# gem 'devise'
# gem 'devise-i18n'
# gem 'omniauth'
# gem 'omniauth-facebook'
# gem 'omniauth-twitter'

# Logging
gem 'lograge'
# gem 'logstash-logger'
# gem 'logstash-event'

# Exception notification
# gem 'exception_notification'
# gem 'slack-notifier'
gem 'rollbar'


