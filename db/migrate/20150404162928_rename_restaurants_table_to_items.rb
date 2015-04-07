class RenameRestaurantsTableToItems < ActiveRecord::Migration
  def change
  rename_table :restaurants, :items
  end
end
