source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
gem 'puma'

group :production do
  gem 'rails_12factor' # Views
  gem 'pg'
end


gem 'less-rails', '~> 2.6.0' # Views

gem 'uglifier', '>= 1.3.0' # Views
gem 'therubyracer', require: 'v8' # Views

gem 'jquery-rails' # Views
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'twitter-bootstrap-rails' # Views
gem 'simple_form' # Views


gem 'active_model_serializers'
gem 'sprockets-rails', '~> 2.2.0'
gem 'sprockets', '~> 2.12.0'
gem 'rack-cors', :require => 'rack/cors'
gem 'rails-api'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'mysql2', '~> 0.3.13'
  
  gem 'did_you_mean'
  gem 'fuubar'

  gem 'rspec-rails'
  gem 'guard-spork'
  gem 'guard-rubocop'
  gem 'guard-rspec', '~> 4.3.1'

  gem 'regressor', '~> 0.4.0'
  gem 'git'
  gem 'bundler-audit', require: false
  gem 'consistency_fail' # Run with `consistency_fail`
  gem 'simplecov', require: false
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'gemsurance'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'awesome_print'
  gem 'quiet_assets'
  gem 'bullet' # detects common sql query mistakes
  gem 'brakeman', require: false # Finds common Rails security vulnerability
  gem 'ruby-prof' # , git: 'git://github.com/wycats/ruby-prof.git' # See better profiling information together with new_relic gem
  # gem 'rack-mini-profiler'
  gem 'thin' # Use thin as webserver instead of webbrick
  gem 'rb-fsevent', '~> 0.9.1' # Enables guard to detect file changes osx
  gem 'rubocop', require: false
  gem 'rubycritic', require: false
  gem 'rb-readline'
  gem 'site_mapper'
  gem 'rails-erd'
end


