require 'test_helper'

class FastpassesControllerTest < ActionController::TestCase
  setup do
    @fastpass = fastpasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fastpasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fastpass" do
    assert_difference('Fastpass.count') do
      post :create, :fastpass => @fastpass.attributes
    end

    assert_redirected_to fastpass_path(assigns(:fastpass))
  end

  test "should show fastpass" do
    get :show, :id => @fastpass.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fastpass.to_param
    assert_response :success
  end

  test "should update fastpass" do
    put :update, :id => @fastpass.to_param, :fastpass => @fastpass.attributes
    assert_redirected_to fastpass_path(assigns(:fastpass))
  end

  test "should destroy fastpass" do
    assert_difference('Fastpass.count', -1) do
      delete :destroy, :id => @fastpass.to_param
    end

    assert_redirected_to fastpasses_path
  end
end
