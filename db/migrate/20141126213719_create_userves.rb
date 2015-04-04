class CreateUserves < ActiveRecord::Migration
  def change
    create_table :userves do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :outh_token
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
end
