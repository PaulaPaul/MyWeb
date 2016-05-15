require 'test_helper'

class MyNamesControllerTest < ActionController::TestCase
  setup do
    @my_name = my_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_name" do
    assert_difference('MyName.count') do
      post :create, my_name: { color: @my_name.color, name: @my_name.name }
    end

    assert_redirected_to my_name_path(assigns(:my_name))
  end

  test "should show my_name" do
    get :show, id: @my_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_name
    assert_response :success
  end

  test "should update my_name" do
    patch :update, id: @my_name, my_name: { color: @my_name.color, name: @my_name.name }
    assert_redirected_to my_name_path(assigns(:my_name))
  end

  test "should destroy my_name" do
    assert_difference('MyName.count', -1) do
      delete :destroy, id: @my_name
    end

    assert_redirected_to my_names_path
  end
end
