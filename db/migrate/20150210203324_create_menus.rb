class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title
      t.string :picture
      t.string :address
      t.string :appetizer_1
      t.string :appetizer_2
      t.string :appetizer_3
      t.string :appetizer_4
      t.string :appetizer_5
      t.string :appetizer_6
      t.string :appetizer_7
      t.string :appetizer_8
      t.string :maincourse_1
      t.string :maincourse_2
      t.string :maincourse_3
      t.string :maincourse_4
      t.string :maincourse_5
      t.string :maincourse_6
      t.string :maincourse_7
      t.string :maincourse_8
      t.string :maincourse_9
      t.string :maincourse_10
      t.string :maincourse_11
      t.string :maincourse_12
      t.string :maincourse_13
      t.string :maincourse_14
      t.string :maincourse_15
      t.string :dessert_1
      t.string :dessert_2
      t.string :dessert_3
      t.string :dessert_4
      t.string :dessert_5
      t.string :dessert_6
      t.string :dessert_7
      t.string :dessert_8
      t.string :dessert_9
      t.string :dessert_10
      t.string :drinks_1
      t.string :drinks_2
      t.string :drinks_3
      t.string :drinks_4
      t.string :drinks_5
      t.string :drinks_6
      t.string :drinks_7
      t.string :drinks_8

      t.timestamps
    end
  end
end
