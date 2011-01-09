require 'test_helper'

class UvaksControllerTest < ActionController::TestCase
  setup do
    @uvak = uvaks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uvaks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uvak" do
    assert_difference('Uvak.count') do
      post :create, :uvak => @uvak.attributes
    end

    assert_redirected_to uvak_path(assigns(:uvak))
  end

  test "should show uvak" do
    get :show, :id => @uvak.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @uvak.to_param
    assert_response :success
  end

  test "should update uvak" do
    put :update, :id => @uvak.to_param, :uvak => @uvak.attributes
    assert_redirected_to uvak_path(assigns(:uvak))
  end

  test "should destroy uvak" do
    assert_difference('Uvak.count', -1) do
      delete :destroy, :id => @uvak.to_param
    end

    assert_redirected_to uvaks_path
  end
end
