require 'test_helper'

class PricingRulesControllerTest < ActionController::TestCase
  setup do
    @pricing_rule = pricing_rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pricing_rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pricing_rule" do
    assert_difference('PricingRule.count') do
      post :create, :pricing_rule => @pricing_rule.attributes
    end

    assert_redirected_to pricing_rule_path(assigns(:pricing_rule))
  end

  test "should show pricing_rule" do
    get :show, :id => @pricing_rule.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pricing_rule.to_param
    assert_response :success
  end

  test "should update pricing_rule" do
    put :update, :id => @pricing_rule.to_param, :pricing_rule => @pricing_rule.attributes
    assert_redirected_to pricing_rule_path(assigns(:pricing_rule))
  end

  test "should destroy pricing_rule" do
    assert_difference('PricingRule.count', -1) do
      delete :destroy, :id => @pricing_rule.to_param
    end

    assert_redirected_to pricing_rules_path
  end
end
