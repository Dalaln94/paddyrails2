require 'test_helper'

class CateringsControllerTest < ActionController::TestCase
  setup do
    @catering = caterings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caterings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catering" do
    assert_difference('Catering.count') do
      post :create, catering: { highprice: @catering.highprice, lowprice: @catering.lowprice, menu: @catering.menu, name: @catering.name, picture: @catering.picture }
    end

    assert_redirected_to catering_path(assigns(:catering))
  end

  test "should show catering" do
    get :show, id: @catering
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catering
    assert_response :success
  end

  test "should update catering" do
    patch :update, id: @catering, catering: { highprice: @catering.highprice, lowprice: @catering.lowprice, menu: @catering.menu, name: @catering.name, picture: @catering.picture }
    assert_redirected_to catering_path(assigns(:catering))
  end

  test "should destroy catering" do
    assert_difference('Catering.count', -1) do
      delete :destroy, id: @catering
    end

    assert_redirected_to caterings_path
  end
end
