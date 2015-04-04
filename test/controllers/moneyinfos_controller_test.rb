require 'test_helper'

class MoneyinfosControllerTest < ActionController::TestCase
  setup do
    @moneyinfo = moneyinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moneyinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moneyinfo" do
    assert_difference('Moneyinfo.count') do
      post :create, moneyinfo: { paymenttype: @moneyinfo.paymenttype, startdate: @moneyinfo.startdate, user_id: @moneyinfo.user_id }
    end

    assert_redirected_to moneyinfo_path(assigns(:moneyinfo))
  end

  test "should show moneyinfo" do
    get :show, id: @moneyinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moneyinfo
    assert_response :success
  end

  test "should update moneyinfo" do
    patch :update, id: @moneyinfo, moneyinfo: { paymenttype: @moneyinfo.paymenttype, startdate: @moneyinfo.startdate, user_id: @moneyinfo.user_id }
    assert_redirected_to moneyinfo_path(assigns(:moneyinfo))
  end

  test "should destroy moneyinfo" do
    assert_difference('Moneyinfo.count', -1) do
      delete :destroy, id: @moneyinfo
    end

    assert_redirected_to moneyinfos_path
  end
end
