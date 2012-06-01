require 'test_helper'

class DocumentedMaterialsControllerTest < ActionController::TestCase
  setup do
    @documented_material = documented_materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documented_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documented_material" do
    assert_difference('DocumentedMaterial.count') do
      post :create, :documented_material => @documented_material.attributes
    end

    assert_redirected_to documented_material_path(assigns(:documented_material))
  end

  test "should show documented_material" do
    get :show, :id => @documented_material.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @documented_material.to_param
    assert_response :success
  end

  test "should update documented_material" do
    put :update, :id => @documented_material.to_param, :documented_material => @documented_material.attributes
    assert_redirected_to documented_material_path(assigns(:documented_material))
  end

  test "should destroy documented_material" do
    assert_difference('DocumentedMaterial.count', -1) do
      delete :destroy, :id => @documented_material.to_param
    end

    assert_redirected_to documented_materials_path
  end
end
