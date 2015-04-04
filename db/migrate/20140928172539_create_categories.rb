class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :nametype
      t.string :timeopen
      t.boolean :type

      t.timestamps
    end
  end
end
