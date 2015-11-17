require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get work" do
    get :work
    assert_response :success
  end

  test "should get interest" do
    get :interest
    assert_response :success
  end

end
