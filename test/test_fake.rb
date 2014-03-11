require 'capybara'
require 'test/unit'
require 'pry'

class CapybaraTestCase < Test::Unit::TestCase
  include Capybara::DSL

  setup do
    Capybara.current_driver = Capybara.javascript_driver # :selenium by default
  end

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end

  def test_works
    visit_google
    assert_equal true, page.has_content?('Google')
  end
end