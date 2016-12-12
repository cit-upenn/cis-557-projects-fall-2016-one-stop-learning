require 'test_helper'

class RubyquizzesControllerTest < ActionController::TestCase
  setup do
    @rubyquiz = rubyquizzes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rubyquizzes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rubyquiz" do
    assert_difference('Rubyquiz.count') do
      post :create, rubyquiz: { ans1: @rubyquiz.ans1, ans2: @rubyquiz.ans2, ans3: @rubyquiz.ans3, ans4: @rubyquiz.ans4, correctAns: @rubyquiz.correctAns, question: @rubyquiz.question }
    end

    assert_redirected_to rubyquiz_path(assigns(:rubyquiz))
  end

  test "should show rubyquiz" do
    get :show, id: @rubyquiz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rubyquiz
    assert_response :success
  end

  test "should update rubyquiz" do
    patch :update, id: @rubyquiz, rubyquiz: { ans1: @rubyquiz.ans1, ans2: @rubyquiz.ans2, ans3: @rubyquiz.ans3, ans4: @rubyquiz.ans4, correctAns: @rubyquiz.correctAns, question: @rubyquiz.question }
    assert_redirected_to rubyquiz_path(assigns(:rubyquiz))
  end

  test "should destroy rubyquiz" do
    assert_difference('Rubyquiz.count', -1) do
      delete :destroy, id: @rubyquiz
    end

    assert_redirected_to rubyquizzes_path
  end
end
