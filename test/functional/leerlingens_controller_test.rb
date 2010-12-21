require 'test_helper'

class LeerlingensControllerTest < ActionController::TestCase
  setup do
    @leerlingen = leerlingens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leerlingens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leerlingen" do
    assert_difference('Leerlingen.count') do
      post :create, :leerlingen => @leerlingen.attributes
    end

    assert_redirected_to leerlingen_path(assigns(:leerlingen))
  end

  test "should show leerlingen" do
    get :show, :id => @leerlingen.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @leerlingen.to_param
    assert_response :success
  end

  test "should update leerlingen" do
    put :update, :id => @leerlingen.to_param, :leerlingen => @leerlingen.attributes
    assert_redirected_to leerlingen_path(assigns(:leerlingen))
  end

  test "should destroy leerlingen" do
    assert_difference('Leerlingen.count', -1) do
      delete :destroy, :id => @leerlingen.to_param
    end

    assert_redirected_to leerlingens_path
  end
end
