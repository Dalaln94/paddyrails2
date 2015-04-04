class CreateCaterings < ActiveRecord::Migration
  def change
    create_table :caterings do |t|
      t.string :name
      t.string :picture
      t.integer :lowprice
      t.integer :highprice
      t.string :menu

      t.timestamps
    end
  end
end
