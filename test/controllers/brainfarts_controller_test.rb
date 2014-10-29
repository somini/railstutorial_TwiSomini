require 'test_helper'

class BrainfartsControllerTest < ActionController::TestCase
  setup do
    @brainfart = brainfarts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brainfarts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brainfart" do
    assert_difference('Brainfart.count') do
      post :create, brainfart: { content: @brainfart.content, user_id: @brainfart.user_id }
    end

    assert_redirected_to brainfart_path(assigns(:brainfart))
  end

  test "should show brainfart" do
    get :show, id: @brainfart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brainfart
    assert_response :success
  end

  test "should update brainfart" do
    patch :update, id: @brainfart, brainfart: { content: @brainfart.content, user_id: @brainfart.user_id }
    assert_redirected_to brainfart_path(assigns(:brainfart))
  end

  test "should destroy brainfart" do
    assert_difference('Brainfart.count', -1) do
      delete :destroy, id: @brainfart
    end

    assert_redirected_to brainfarts_path
  end
end
