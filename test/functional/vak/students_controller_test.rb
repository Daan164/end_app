require 'test_helper'

class Vak::StudentsControllerTest < ActionController::TestCase
  setup do
    @vak_student = vak_students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vak_students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vak_student" do
    assert_difference('Vak::Student.count') do
      post :create, :vak_student => @vak_student.attributes
    end

    assert_redirected_to vak_student_path(assigns(:vak_student))
  end

  test "should show vak_student" do
    get :show, :id => @vak_student.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vak_student.to_param
    assert_response :success
  end

  test "should update vak_student" do
    put :update, :id => @vak_student.to_param, :vak_student => @vak_student.attributes
    assert_redirected_to vak_student_path(assigns(:vak_student))
  end

  test "should destroy vak_student" do
    assert_difference('Vak::Student.count', -1) do
      delete :destroy, :id => @vak_student.to_param
    end

    assert_redirected_to vak_students_path
  end
end
