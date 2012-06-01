require 'test_helper'

class SchemaItemsControllerTest < ActionController::TestCase
  setup do
    @schema_item = schema_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schema_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schema_item" do
    assert_difference('SchemaItem.count') do
      post :create, :schema_item => @schema_item.attributes
    end

    assert_redirected_to schema_item_path(assigns(:schema_item))
  end

  test "should show schema_item" do
    get :show, :id => @schema_item.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @schema_item.to_param
    assert_response :success
  end

  test "should update schema_item" do
    put :update, :id => @schema_item.to_param, :schema_item => @schema_item.attributes
    assert_redirected_to schema_item_path(assigns(:schema_item))
  end

  test "should destroy schema_item" do
    assert_difference('SchemaItem.count', -1) do
      delete :destroy, :id => @schema_item.to_param
    end

    assert_redirected_to schema_items_path
  end
end
