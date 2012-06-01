require 'test_helper'

class LocatedMaterialsControllerTest < ActionController::TestCase
  setup do
    @located_material = located_materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:located_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create located_material" do
    assert_difference('LocatedMaterial.count') do
      post :create, :located_material => @located_material.attributes
    end

    assert_redirected_to located_material_path(assigns(:located_material))
  end

  test "should show located_material" do
    get :show, :id => @located_material.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @located_material.to_param
    assert_response :success
  end

  test "should update located_material" do
    put :update, :id => @located_material.to_param, :located_material => @located_material.attributes
    assert_redirected_to located_material_path(assigns(:located_material))
  end

  test "should destroy located_material" do
    assert_difference('LocatedMaterial.count', -1) do
      delete :destroy, :id => @located_material.to_param
    end

    assert_redirected_to located_materials_path
  end
end
