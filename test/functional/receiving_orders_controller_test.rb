require 'test_helper'

class ReceivingOrdersControllerTest < ActionController::TestCase
  setup do
    @receiving_order = receiving_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receiving_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receiving_order" do
    assert_difference('ReceivingOrder.count') do
      post :create, :receiving_order => @receiving_order.attributes
    end

    assert_redirected_to receiving_order_path(assigns(:receiving_order))
  end

  test "should show receiving_order" do
    get :show, :id => @receiving_order.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @receiving_order.to_param
    assert_response :success
  end

  test "should update receiving_order" do
    put :update, :id => @receiving_order.to_param, :receiving_order => @receiving_order.attributes
    assert_redirected_to receiving_order_path(assigns(:receiving_order))
  end

  test "should destroy receiving_order" do
    assert_difference('ReceivingOrder.count', -1) do
      delete :destroy, :id => @receiving_order.to_param
    end

    assert_redirected_to receiving_orders_path
  end
end
