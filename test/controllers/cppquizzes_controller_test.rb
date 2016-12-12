require 'test_helper'

class CppquizzesControllerTest < ActionController::TestCase
  setup do
    @cppquiz = cppquizzes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cppquizzes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cppquiz" do
    assert_difference('Cppquiz.count') do
      post :create, cppquiz: { ans1: @cppquiz.ans1, ans2: @cppquiz.ans2, ans3: @cppquiz.ans3, ans4: @cppquiz.ans4, correctAns: @cppquiz.correctAns, question: @cppquiz.question }
    end

    assert_redirected_to cppquiz_path(assigns(:cppquiz))
  end

  test "should show cppquiz" do
    get :show, id: @cppquiz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cppquiz
    assert_response :success
  end

  test "should update cppquiz" do
    patch :update, id: @cppquiz, cppquiz: { ans1: @cppquiz.ans1, ans2: @cppquiz.ans2, ans3: @cppquiz.ans3, ans4: @cppquiz.ans4, correctAns: @cppquiz.correctAns, question: @cppquiz.question }
    assert_redirected_to cppquiz_path(assigns(:cppquiz))
  end

  test "should destroy cppquiz" do
    assert_difference('Cppquiz.count', -1) do
      delete :destroy, id: @cppquiz
    end

    assert_redirected_to cppquizzes_path
  end
end
