require 'test_helper'

class ShippingOrdersControllerTest < ActionController::TestCase
  setup do
    @shipping_order = shipping_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipping_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipping_order" do
    assert_difference('ShippingOrder.count') do
      post :create, :shipping_order => @shipping_order.attributes
    end

    assert_redirected_to shipping_order_path(assigns(:shipping_order))
  end

  test "should show shipping_order" do
    get :show, :id => @shipping_order.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @shipping_order.to_param
    assert_response :success
  end

  test "should update shipping_order" do
    put :update, :id => @shipping_order.to_param, :shipping_order => @shipping_order.attributes
    assert_redirected_to shipping_order_path(assigns(:shipping_order))
  end

  test "should destroy shipping_order" do
    assert_difference('ShippingOrder.count', -1) do
      delete :destroy, :id => @shipping_order.to_param
    end

    assert_redirected_to shipping_orders_path
  end
end
