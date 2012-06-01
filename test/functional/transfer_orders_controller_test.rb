require 'test_helper'

class TransferOrdersControllerTest < ActionController::TestCase
  setup do
    @transfer_order = transfer_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transfer_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transfer_order" do
    assert_difference('TransferOrder.count') do
      post :create, :transfer_order => @transfer_order.attributes
    end

    assert_redirected_to transfer_order_path(assigns(:transfer_order))
  end

  test "should show transfer_order" do
    get :show, :id => @transfer_order.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @transfer_order.to_param
    assert_response :success
  end

  test "should update transfer_order" do
    put :update, :id => @transfer_order.to_param, :transfer_order => @transfer_order.attributes
    assert_redirected_to transfer_order_path(assigns(:transfer_order))
  end

  test "should destroy transfer_order" do
    assert_difference('TransferOrder.count', -1) do
      delete :destroy, :id => @transfer_order.to_param
    end

    assert_redirected_to transfer_orders_path
  end
end
