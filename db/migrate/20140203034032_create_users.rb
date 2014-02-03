class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email_address
      t.string :username
      t.string :password
      t.string :home_location
      t.string :home_state
      t.string :merchant_type
      t.string :purchases
      t.string :avatar
    end
  end
end
