require 'test_helper'

class HelpsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get helps_index_url
    assert_response :success
  end

  test "should get new" do
    get helps_new_url
    assert_response :success
  end

  test "should get create" do
    get helps_create_url
    assert_response :success
  end

  test "should get destroy" do
    get helps_destroy_url
    assert_response :success
  end

end
