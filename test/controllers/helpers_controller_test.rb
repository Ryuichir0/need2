require 'test_helper'

class HelpersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get helpers_show_url
    assert_response :success
  end

end
