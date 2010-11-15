class AddDetailsToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :price, :decimal
    add_column :products, :unit_id, :integer
  end

  def self.down
    remove_column :products, :unit_id
    remove_column :products, :price
  end
end
