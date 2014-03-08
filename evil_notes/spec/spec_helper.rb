require 'rubygems'

# All our specs should require 'spec_helper' (this file)

# If RACK_ENV isn't set, set it to 'test'.  Sinatra defaults to development,
# so we have to override that unless we want to set RACK_ENV=test from the
# command line when we run rake spec.  That's tedious, so do it here.
ENV['RACK_ENV'] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require 'shoulda-matchers'
require 'rack/test'
require 'factory_girl'
require 'database_cleaner'

FactoryGirl.definition_file_paths = %w{./factories ./test/factories ./spec/factories}
FactoryGirl.find_definitions

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

RSpec.configure do |config|
  
  config.before :each do
    begin
      DatabaseCleaner.strategy = :transaction
      DatabaseCleaner.clean_with(:truncation)
      DatabaseCleaner.start
      FactoryGirl.lint
    ensure
      DatabaseCleaner.clean
    end
  end

  config.after do
    DatabaseCleaner.clean
  end

  config.include FactoryGirl::Syntax::Methods

end

def app
  Sinatra::Application
end


