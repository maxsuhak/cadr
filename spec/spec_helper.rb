require 'rubygems'

if !ENV['COVERAGE'].nil?
  require 'simplecov'

  SimpleCov.start 'rails' do
    project_name 'cadr'

    add_filter '/spec/'
  end
end

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'rake'
require 'shoulda'

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec

  config.include FactoryGirl::Syntax::Methods
  config.include Devise::TestHelpers, type: :controller
  config.include Devise::TestHelpers, type: :view

  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
end
