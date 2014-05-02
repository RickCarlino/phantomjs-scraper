require 'capybara'
require 'capybara/poltergeist'
require 'test/unit'
require 'pry'

class IntegrationTest < Test::Unit::TestCase
  include Capybara::DSL

  setup do
    Capybara.current_driver = :poltergeist # :selenium by default
  end

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end

end

