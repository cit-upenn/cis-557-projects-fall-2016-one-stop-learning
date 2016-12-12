require 'test_helper'

class JavaquizzesControllerTest < ActionController::TestCase
  setup do
    @javaquiz = javaquizzes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:javaquizzes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create javaquiz" do
    assert_difference('Javaquiz.count') do
      post :create, javaquiz: { ans1: @javaquiz.ans1, ans2: @javaquiz.ans2, ans3: @javaquiz.ans3, ans4: @javaquiz.ans4, correctAns: @javaquiz.correctAns, question: @javaquiz.question }
    end

    assert_redirected_to javaquiz_path(assigns(:javaquiz))
  end

  test "should show javaquiz" do
    get :show, id: @javaquiz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @javaquiz
    assert_response :success
  end

  test "should update javaquiz" do
    patch :update, id: @javaquiz, javaquiz: { ans1: @javaquiz.ans1, ans2: @javaquiz.ans2, ans3: @javaquiz.ans3, ans4: @javaquiz.ans4, correctAns: @javaquiz.correctAns, question: @javaquiz.question }
    assert_redirected_to javaquiz_path(assigns(:javaquiz))
  end

  test "should destroy javaquiz" do
    assert_difference('Javaquiz.count', -1) do
      delete :destroy, id: @javaquiz
    end

    assert_redirected_to javaquizzes_path
  end
end
