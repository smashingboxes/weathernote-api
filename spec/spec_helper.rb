ENV['RAILS_ENV'] = 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'

SmarfDoc.config do |c|
  c.template_file = 'spec/support/template.md.erb'
  c.output_file = 'spec/support/api_docs.md'
end

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.use_transactional_fixtures = false # Using DatabaseCleaner instead

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
  config.color = true
  config.tty = true
  config.formatter = :documentation

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

   config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.infer_spec_type_from_file_location!

  RSpec.configure do |config|
    config.after(:each, type: :controller) do
      SmarfDoc.run!(request, response)
    end

    config.after(:suite) { SmarfDoc.finish! }
  end
end
