ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'sidekiq/testing'

Sidekiq::Testing.inline!

require 'simplecov'
SimpleCov.start

require 'coveralls'
Coveralls.wear!

class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods
  include AuthHelper
  include ActionMailer::TestHelper
end
