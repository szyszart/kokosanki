class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.decimal :price
      t.integer :product_id
      t.integer :unit_id

      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
