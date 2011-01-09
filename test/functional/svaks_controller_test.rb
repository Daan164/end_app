require 'test_helper'

class SvaksControllerTest < ActionController::TestCase
  setup do
    @svak = svaks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:svaks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create svak" do
    assert_difference('Svak.count') do
      post :create, :svak => @svak.attributes
    end

    assert_redirected_to svak_path(assigns(:svak))
  end

  test "should show svak" do
    get :show, :id => @svak.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @svak.to_param
    assert_response :success
  end

  test "should update svak" do
    put :update, :id => @svak.to_param, :svak => @svak.attributes
    assert_redirected_to svak_path(assigns(:svak))
  end

  test "should destroy svak" do
    assert_difference('Svak.count', -1) do
      delete :destroy, :id => @svak.to_param
    end

    assert_redirected_to svaks_path
  end
end
