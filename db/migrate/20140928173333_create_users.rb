class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.date :dob
      t.string :gender
      t.string :email
      t.string :number
      t.string :password
      t.integer :loyaltypoint
      t.integer :moneyinfo_id

      t.timestamps
    end
  end
end
