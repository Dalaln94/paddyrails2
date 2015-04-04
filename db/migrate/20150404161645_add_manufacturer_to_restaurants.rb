class AddManufacturerToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :manufacturer, :string
  end
end
