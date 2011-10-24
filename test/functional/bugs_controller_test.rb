require 'test_helper'

class BugsControllerTest < ActionController::TestCase
  setup do
    @bug = bugs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bugs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bug" do
    assert_difference('Bug.count') do
      post :create, bug: @bug.attributes
    end

    assert_redirected_to bug_path(assigns(:bug))
  end

  test "should show bug" do
    get :show, id: @bug.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bug.to_param
    assert_response :success
  end

  test "should update bug" do
    put :update, id: @bug.to_param, bug: @bug.attributes
    assert_redirected_to bug_path(assigns(:bug))
  end

  test "should destroy bug" do
    assert_difference('Bug.count', -1) do
      delete :destroy, id: @bug.to_param
    end

    assert_redirected_to bugs_path
  end
end
