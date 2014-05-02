require_relative './test_helper'

class CapybaraTestCase < IntegrationTest #Test::Unit::TestCase
  def test_works
    visit 'http://news.ycombinator.com'
    page.save_screenshot('./wow_phantomjs_does_screenshots.png', :full => true)
    assert_true page.has_content?('Hacker News')
  end
end