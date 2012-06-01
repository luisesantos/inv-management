require 'test_helper'

class FieldsGroupsControllerTest < ActionController::TestCase
  setup do
    @fields_group = fields_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fields_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fields_group" do
    assert_difference('FieldsGroup.count') do
      post :create, :fields_group => @fields_group.attributes
    end

    assert_redirected_to fields_group_path(assigns(:fields_group))
  end

  test "should show fields_group" do
    get :show, :id => @fields_group.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fields_group.to_param
    assert_response :success
  end

  test "should update fields_group" do
    put :update, :id => @fields_group.to_param, :fields_group => @fields_group.attributes
    assert_redirected_to fields_group_path(assigns(:fields_group))
  end

  test "should destroy fields_group" do
    assert_difference('FieldsGroup.count', -1) do
      delete :destroy, :id => @fields_group.to_param
    end

    assert_redirected_to fields_groups_path
  end
end
