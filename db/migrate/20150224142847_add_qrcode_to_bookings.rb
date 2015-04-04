class AddQrcodeToBookings < ActiveRecord::Migration
def change
add_column :bookings, :qrcode, :string
end
end