class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :picture
      t.string :address
      t.integer :lowprice
      t.integer :highprice
      t.string :menu

      t.timestamps
    end
  end
end
