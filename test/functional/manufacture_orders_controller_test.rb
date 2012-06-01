require 'test_helper'

class ManufactureOrdersControllerTest < ActionController::TestCase
  setup do
    @manufacture_order = manufacture_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manufacture_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manufacture_order" do
    assert_difference('ManufactureOrder.count') do
      post :create, :manufacture_order => @manufacture_order.attributes
    end

    assert_redirected_to manufacture_order_path(assigns(:manufacture_order))
  end

  test "should show manufacture_order" do
    get :show, :id => @manufacture_order.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @manufacture_order.to_param
    assert_response :success
  end

  test "should update manufacture_order" do
    put :update, :id => @manufacture_order.to_param, :manufacture_order => @manufacture_order.attributes
    assert_redirected_to manufacture_order_path(assigns(:manufacture_order))
  end

  test "should destroy manufacture_order" do
    assert_difference('ManufactureOrder.count', -1) do
      delete :destroy, :id => @manufacture_order.to_param
    end

    assert_redirected_to manufacture_orders_path
  end
end
