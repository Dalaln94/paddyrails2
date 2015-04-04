require 'test_helper'

class ExtraControllerTest < ActionController::TestCase
  test "should get privacy" do
    get :privacy
    assert_response :success
  end

  test "should get adv" do
    get :adv
    assert_response :success
  end

end
