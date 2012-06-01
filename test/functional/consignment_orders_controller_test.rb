require 'test_helper'

class ConsignmentOrdersControllerTest < ActionController::TestCase
  setup do
    @consignment_order = consignment_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consignment_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consignment_order" do
    assert_difference('ConsignmentOrder.count') do
      post :create, :consignment_order => @consignment_order.attributes
    end

    assert_redirected_to consignment_order_path(assigns(:consignment_order))
  end

  test "should show consignment_order" do
    get :show, :id => @consignment_order.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @consignment_order.to_param
    assert_response :success
  end

  test "should update consignment_order" do
    put :update, :id => @consignment_order.to_param, :consignment_order => @consignment_order.attributes
    assert_redirected_to consignment_order_path(assigns(:consignment_order))
  end

  test "should destroy consignment_order" do
    assert_difference('ConsignmentOrder.count', -1) do
      delete :destroy, :id => @consignment_order.to_param
    end

    assert_redirected_to consignment_orders_path
  end
end
