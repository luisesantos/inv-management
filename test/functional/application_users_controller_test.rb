require 'test_helper'

class ApplicationUsersControllerTest < ActionController::TestCase
  setup do
    @application_user = application_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:application_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create application_user" do
    assert_difference('ApplicationUser.count') do
      post :create, :application_user => @application_user.attributes
    end

    assert_redirected_to application_user_path(assigns(:application_user))
  end

  test "should show application_user" do
    get :show, :id => @application_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @application_user.to_param
    assert_response :success
  end

  test "should update application_user" do
    put :update, :id => @application_user.to_param, :application_user => @application_user.attributes
    assert_redirected_to application_user_path(assigns(:application_user))
  end

  test "should destroy application_user" do
    assert_difference('ApplicationUser.count', -1) do
      delete :destroy, :id => @application_user.to_param
    end

    assert_redirected_to application_users_path
  end
end
