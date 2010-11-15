class AddPictureUrlToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :picture_url, :string
  end

  def self.down
    remove_column :products, :picture_url
  end
end
