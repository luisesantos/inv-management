require 'test_helper'

class BusinessProcessesControllerTest < ActionController::TestCase
  setup do
    @business_process = business_processes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_processes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_process" do
    assert_difference('BusinessProcess.count') do
      post :create, :business_process => @business_process.attributes
    end

    assert_redirected_to business_process_path(assigns(:business_process))
  end

  test "should show business_process" do
    get :show, :id => @business_process.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @business_process.to_param
    assert_response :success
  end

  test "should update business_process" do
    put :update, :id => @business_process.to_param, :business_process => @business_process.attributes
    assert_redirected_to business_process_path(assigns(:business_process))
  end

  test "should destroy business_process" do
    assert_difference('BusinessProcess.count', -1) do
      delete :destroy, :id => @business_process.to_param
    end

    assert_redirected_to business_processes_path
  end
end
