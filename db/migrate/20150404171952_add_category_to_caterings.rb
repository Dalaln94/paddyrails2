class AddCategoryToCaterings < ActiveRecord::Migration
  def change
    add_column :caterings, :category, :string
  end
end
