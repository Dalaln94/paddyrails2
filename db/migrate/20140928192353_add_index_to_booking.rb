class AddIndexToBooking < ActiveRecord::Migration
  def change
    add_index :bookings, [:user_id, :restaurant_id]
  end
end
