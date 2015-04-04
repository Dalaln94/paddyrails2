class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :category_id
      t.integer :restaurant_id
      t.integer :catering_id

      t.timestamps
    end
  end
end
