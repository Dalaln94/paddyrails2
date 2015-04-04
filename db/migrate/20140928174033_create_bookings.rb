class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :bdateMade
      t.integer :numofpeople
      t.date :beventdate
      t.string :beventtype
      t.integer :bstime
      t.string :bcompleted
      t.boolean :active_status
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :catering_id

      t.timestamps
    end
  end
end
