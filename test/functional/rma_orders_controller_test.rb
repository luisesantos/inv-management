require 'test_helper'

class RmaOrdersControllerTest < ActionController::TestCase
  setup do
    @rma_order = rma_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rma_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rma_order" do
    assert_difference('RmaOrder.count') do
      post :create, :rma_order => @rma_order.attributes
    end

    assert_redirected_to rma_order_path(assigns(:rma_order))
  end

  test "should show rma_order" do
    get :show, :id => @rma_order.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @rma_order.to_param
    assert_response :success
  end

  test "should update rma_order" do
    put :update, :id => @rma_order.to_param, :rma_order => @rma_order.attributes
    assert_redirected_to rma_order_path(assigns(:rma_order))
  end

  test "should destroy rma_order" do
    assert_difference('RmaOrder.count', -1) do
      delete :destroy, :id => @rma_order.to_param
    end

    assert_redirected_to rma_orders_path
  end
end
