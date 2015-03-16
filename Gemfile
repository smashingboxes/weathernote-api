source 'https://rubygems.org'

# Backend
gem 'rails', '4.2.0'
gem 'rails-api'
gem 'active_model_serializers', github: 'rails-api/active_model_serializers', branch: '0-9-stable'
gem 'pg'

# Server
gem 'unicorn'
gem 'thin', group: :development
gem 'tape', github: 'smashingboxes/tape', tag: '0.2.2', group: :development

# Generate fake names, addresses
gem 'faker'

group :development do
  gem 'quiet_assets'
  gem 'web-console', '~> 2.0'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'pry-byebug'
end

group :test do
  gem 'database_cleaner'
end
