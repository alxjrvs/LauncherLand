require 'test_helper'

class LifeguardsControllerTest < ActionController::TestCase
  setup do
    @lifeguard = lifeguards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lifeguards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lifeguard" do
    assert_difference('Lifeguard.count') do
      post :create, lifeguard: { spf: @lifeguard.spf, tan: @lifeguard.tan }
    end

    assert_redirected_to lifeguard_path(assigns(:lifeguard))
  end

  test "should show lifeguard" do
    get :show, id: @lifeguard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lifeguard
    assert_response :success
  end

  test "should update lifeguard" do
    patch :update, id: @lifeguard, lifeguard: { spf: @lifeguard.spf, tan: @lifeguard.tan }
    assert_redirected_to lifeguard_path(assigns(:lifeguard))
  end

  test "should destroy lifeguard" do
    assert_difference('Lifeguard.count', -1) do
      delete :destroy, id: @lifeguard
    end

    assert_redirected_to lifeguards_path
  end
end
