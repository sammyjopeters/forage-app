class FixListingColumnName < ActiveRecord::Migration
  def change
    rename_column :listings, :goods_type, :name
  end
end
