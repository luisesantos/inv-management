require 'test_helper'

class VendorMaterialsControllerTest < ActionController::TestCase
  setup do
    @vendor_material = vendor_materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendor_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendor_material" do
    assert_difference('VendorMaterial.count') do
      post :create, :vendor_material => @vendor_material.attributes
    end

    assert_redirected_to vendor_material_path(assigns(:vendor_material))
  end

  test "should show vendor_material" do
    get :show, :id => @vendor_material.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vendor_material.to_param
    assert_response :success
  end

  test "should update vendor_material" do
    put :update, :id => @vendor_material.to_param, :vendor_material => @vendor_material.attributes
    assert_redirected_to vendor_material_path(assigns(:vendor_material))
  end

  test "should destroy vendor_material" do
    assert_difference('VendorMaterial.count', -1) do
      delete :destroy, :id => @vendor_material.to_param
    end

    assert_redirected_to vendor_materials_path
  end
end
