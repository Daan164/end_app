require 'test_helper'

class Vak::UsersControllerTest < ActionController::TestCase
  setup do
    @vak_user = vak_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vak_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vak_user" do
    assert_difference('Vak::User.count') do
      post :create, :vak_user => @vak_user.attributes
    end

    assert_redirected_to vak_user_path(assigns(:vak_user))
  end

  test "should show vak_user" do
    get :show, :id => @vak_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vak_user.to_param
    assert_response :success
  end

  test "should update vak_user" do
    put :update, :id => @vak_user.to_param, :vak_user => @vak_user.attributes
    assert_redirected_to vak_user_path(assigns(:vak_user))
  end

  test "should destroy vak_user" do
    assert_difference('Vak::User.count', -1) do
      delete :destroy, :id => @vak_user.to_param
    end

    assert_redirected_to vak_users_path
  end
end
