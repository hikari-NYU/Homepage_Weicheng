require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { s10: @user.s10, s1: @user.s1, s2: @user.s2, s3: @user.s3, s4a: @user.s4a, s4b: @user.s4b, s4c: @user.s4c, s5a: @user.s5a, s5b: @user.s5b, s5c: @user.s5c, s6a: @user.s6a, s6b: @user.s6b, s6c: @user.s6c, s7a: @user.s7a, s7b: @user.s7b, s7c: @user.s7c, s8a: @user.s8a, s8b: @user.s8b, s8c: @user.s8c, s9: @user.s9, uid: @user.uid }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { s10: @user.s10, s1: @user.s1, s2: @user.s2, s3: @user.s3, s4a: @user.s4a, s4b: @user.s4b, s4c: @user.s4c, s5a: @user.s5a, s5b: @user.s5b, s5c: @user.s5c, s6a: @user.s6a, s6b: @user.s6b, s6c: @user.s6c, s7a: @user.s7a, s7b: @user.s7b, s7c: @user.s7c, s8a: @user.s8a, s8b: @user.s8b, s8c: @user.s8c, s9: @user.s9, uid: @user.uid }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
