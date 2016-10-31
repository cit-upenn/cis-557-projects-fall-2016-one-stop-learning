require 'test_helper'

class LangoptsControllerTest < ActionController::TestCase
  setup do
    @langopt = langopts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:langopts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create langopt" do
    assert_difference('Langopt.count') do
      post :create, langopt: { name: @langopt.name }
    end

    assert_redirected_to langopt_path(assigns(:langopt))
  end

  test "should show langopt" do
    get :show, id: @langopt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @langopt
    assert_response :success
  end

  test "should update langopt" do
    patch :update, id: @langopt, langopt: { name: @langopt.name }
    assert_redirected_to langopt_path(assigns(:langopt))
  end

  test "should destroy langopt" do
    assert_difference('Langopt.count', -1) do
      delete :destroy, id: @langopt
    end

    assert_redirected_to langopts_path
  end
end
