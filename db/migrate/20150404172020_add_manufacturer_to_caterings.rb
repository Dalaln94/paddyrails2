class AddManufacturerToCaterings < ActiveRecord::Migration
  def change
    add_column :caterings, :manufacturer, :string
  end
end
