require 'test_helper'

class MercsControllerTest < ActionController::TestCase
  setup do
    @merc = mercs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mercs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create merc" do
    assert_difference('Merc.count') do
      post :create, merc: { name: @merc.name, price: @merc.price }
    end

    assert_redirected_to merc_path(assigns(:merc))
  end

  test "should show merc" do
    get :show, id: @merc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @merc
    assert_response :success
  end

  test "should update merc" do
    patch :update, id: @merc, merc: { name: @merc.name, price: @merc.price }
    assert_redirected_to merc_path(assigns(:merc))
  end

  test "should destroy merc" do
    assert_difference('Merc.count', -1) do
      delete :destroy, id: @merc
    end

    assert_redirected_to mercs_path
  end
end
