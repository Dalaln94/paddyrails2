class AddRestaurantIdToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :restaurant_id, :integer
    remove_column :restaurants, :menu_id, :integer
    remove_column :restaurants, :menu, :string
  end
end
