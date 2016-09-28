# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'

# Require the rails environment from .internal_test_app
require File.expand_path('../../.internal_test_app/config/environment', __FILE__)

# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?

# Require our main RSpec config.
require 'spec_helper'

# Require RSpec::Rails libraries.
require 'rspec/rails'

# Require FactoryGirl libraries
require 'factory_girl'

# Checks for pending migration and applies them before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!

  # Allow calling FactoryGirl methods without the `FactoryGirl` module,
  # e.g. create(:user) instead of FactoryGirl.create(:user)
  config.include FactoryGirl::Syntax::Methods

  # Load all factories
  config.before(:suite) do
    Dir.glob("#{Hydradam.root}/spec/factories/**/*.rb").each { |factory| require factory }
  end
end
