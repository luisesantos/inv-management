require 'test_helper'

class SchemaGroupsControllerTest < ActionController::TestCase
  setup do
    @schema_group = schema_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schema_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schema_group" do
    assert_difference('SchemaGroup.count') do
      post :create, :schema_group => @schema_group.attributes
    end

    assert_redirected_to schema_group_path(assigns(:schema_group))
  end

  test "should show schema_group" do
    get :show, :id => @schema_group.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @schema_group.to_param
    assert_response :success
  end

  test "should update schema_group" do
    put :update, :id => @schema_group.to_param, :schema_group => @schema_group.attributes
    assert_redirected_to schema_group_path(assigns(:schema_group))
  end

  test "should destroy schema_group" do
    assert_difference('SchemaGroup.count', -1) do
      delete :destroy, :id => @schema_group.to_param
    end

    assert_redirected_to schema_groups_path
  end
end
