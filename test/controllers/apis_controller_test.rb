require 'test_helper'

class ApisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get apis_index_url
    assert_response :success
  end

  test "should get show" do
    get apis_show_url
    assert_response :success
  end

  test "should get create" do
    get apis_create_url
    assert_response :success
  end

end
