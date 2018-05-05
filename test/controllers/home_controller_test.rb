require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get write" do
    get :write
    assert_response :success
  end

  test "should get write_result" do
    get :write_result
    assert_response :success
  end

end
