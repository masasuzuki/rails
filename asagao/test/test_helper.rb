ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  private
  # ログイン状態にする
  def login_as(name, admin = false)
  	session[:member_id] = Factory(:member, name: name,
  													administrator: admin).id
  end
end

class ActionDispatch::IntegrationTest
  private
  # ログイン状態にする
  def login_as(name, admin = false)
    Factory(:member, name: name, administrator: admin)
    post "/session", name: name, password: "password"
  end
end
