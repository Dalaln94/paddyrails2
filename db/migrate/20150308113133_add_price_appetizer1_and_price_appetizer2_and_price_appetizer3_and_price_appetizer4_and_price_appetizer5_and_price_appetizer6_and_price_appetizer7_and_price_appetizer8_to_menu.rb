class AddPriceAppetizer1AndPriceAppetizer2AndPriceAppetizer3AndPriceAppetizer4AndPriceAppetizer5AndPriceAppetizer6AndPriceAppetizer7AndPriceAppetizer8ToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :PriceAppetizer1, :string
    add_column :menus, :PriceAppetizer2, :string
    add_column :menus, :PriceAppetizer4, :string
    add_column :menus, :PriceAppetizer5, :string
    add_column :menus, :PriceAppetizer6, :string
    add_column :menus, :PriceAppetizer7, :string
    add_column :menus, :PriceAppetizer8, :string
  end
end
