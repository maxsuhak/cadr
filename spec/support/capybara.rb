require 'capybara/rails'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'capybara'

Capybara.javascript_driver = :poltergeist

Capybara.default_wait_time = Rails.env.test? ? 30 : 5
