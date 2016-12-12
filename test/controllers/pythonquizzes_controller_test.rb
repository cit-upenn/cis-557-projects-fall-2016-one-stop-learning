require 'test_helper'

class PythonquizzesControllerTest < ActionController::TestCase
  setup do
    @pythonquiz = pythonquizzes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pythonquizzes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pythonquiz" do
    assert_difference('Pythonquiz.count') do
      post :create, pythonquiz: { ans1: @pythonquiz.ans1, ans2: @pythonquiz.ans2, ans3: @pythonquiz.ans3, ans4: @pythonquiz.ans4, correctAns: @pythonquiz.correctAns, question: @pythonquiz.question }
    end

    assert_redirected_to pythonquiz_path(assigns(:pythonquiz))
  end

  test "should show pythonquiz" do
    get :show, id: @pythonquiz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pythonquiz
    assert_response :success
  end

  test "should update pythonquiz" do
    patch :update, id: @pythonquiz, pythonquiz: { ans1: @pythonquiz.ans1, ans2: @pythonquiz.ans2, ans3: @pythonquiz.ans3, ans4: @pythonquiz.ans4, correctAns: @pythonquiz.correctAns, question: @pythonquiz.question }
    assert_redirected_to pythonquiz_path(assigns(:pythonquiz))
  end

  test "should destroy pythonquiz" do
    assert_difference('Pythonquiz.count', -1) do
      delete :destroy, id: @pythonquiz
    end

    assert_redirected_to pythonquizzes_path
  end
end
