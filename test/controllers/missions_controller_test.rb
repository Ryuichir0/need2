require 'test_helper'

class MissionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get missions_index_url
    assert_response :success
  end

  test "should get show" do
    get missions_show_url
    assert_response :success
  end

  test "should get new" do
    get missions_new_url
    assert_response :success
  end

  test "should get create" do
    get missions_create_url
    assert_response :success
  end

end
