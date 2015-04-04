class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :catering_id

      t.timestamps
    end
  end
end
