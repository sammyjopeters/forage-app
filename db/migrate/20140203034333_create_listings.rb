class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :goods_type
      t.integer :amount
      t.text :description
      t.string :location
      t.string :transaction_type
      t.integer :cost
      t.datetime :expiry
      t.integer :user_id
      t.string :pictures
      t.string :location_state
      t.boolean :sold
      t.string :sold_to

      t.timestamps
    end
  end
end
