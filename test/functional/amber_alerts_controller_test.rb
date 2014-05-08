require 'test_helper'

class AmberAlertsControllerTest < ActionController::TestCase
  setup do
    @amber_alert = amber_alerts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amber_alerts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amber_alert" do
    assert_difference('AmberAlert.count') do
      post :create, :amber_alert => @amber_alert.attributes
    end

    assert_redirected_to amber_alert_path(assigns(:amber_alert))
  end

  test "should show amber_alert" do
    get :show, :id => @amber_alert.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @amber_alert.to_param
    assert_response :success
  end

  test "should update amber_alert" do
    put :update, :id => @amber_alert.to_param, :amber_alert => @amber_alert.attributes
    assert_redirected_to amber_alert_path(assigns(:amber_alert))
  end

  test "should destroy amber_alert" do
    assert_difference('AmberAlert.count', -1) do
      delete :destroy, :id => @amber_alert.to_param
    end

    assert_redirected_to amber_alerts_path
  end
end
