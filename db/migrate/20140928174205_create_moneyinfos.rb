class CreateMoneyinfos < ActiveRecord::Migration
  def change
    create_table :moneyinfos do |t|
      t.string :enddate, :startdate
      t.string :paymenttype
      t.integer :user_id

      t.timestamps
    end
  end
end
