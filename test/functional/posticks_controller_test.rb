require 'test_helper'

class PosticksControllerTest < ActionController::TestCase
  setup do
    @postick = posticks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posticks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postick" do
    assert_difference('Postick.count') do
      post :create, :postick => @postick.attributes
    end

    assert_redirected_to postick_path(assigns(:postick))
  end

  test "should show postick" do
    get :show, :id => @postick.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @postick.to_param
    assert_response :success
  end

  test "should update postick" do
    put :update, :id => @postick.to_param, :postick => @postick.attributes
    assert_redirected_to postick_path(assigns(:postick))
  end

  test "should destroy postick" do
    assert_difference('Postick.count', -1) do
      delete :destroy, :id => @postick.to_param
    end

    assert_redirected_to posticks_path
  end
end
