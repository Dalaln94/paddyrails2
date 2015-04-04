require 'test_helper'

class BookingsControllerTest < ActionController::TestCase
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booking" do
    assert_difference('Booking.count') do
      post :create, booking: { active_status: @booking.active_status, bcompleted: @booking.bcompleted, bdateMade: @booking.bdateMade, beventdate: @booking.beventdate, beventtype: @booking.beventtype, bstime: @booking.bstime, catering_id: @booking.catering_id, numofpeople: @booking.numofpeople, restaurant_id: @booking.restaurant_id, user_id: @booking.user_id }
    end

    assert_redirected_to booking_path(assigns(:booking))
  end

  test "should show booking" do
    get :show, id: @booking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @booking
    assert_response :success
  end

  test "should update booking" do
    patch :update, id: @booking, booking: { active_status: @booking.active_status, bcompleted: @booking.bcompleted, bdateMade: @booking.bdateMade, beventdate: @booking.beventdate, beventtype: @booking.beventtype, bstime: @booking.bstime, catering_id: @booking.catering_id, numofpeople: @booking.numofpeople, restaurant_id: @booking.restaurant_id, user_id: @booking.user_id }
    assert_redirected_to booking_path(assigns(:booking))
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete :destroy, id: @booking
    end

    assert_redirected_to bookings_path
  end
end
