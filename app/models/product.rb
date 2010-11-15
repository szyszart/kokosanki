class Product < ActiveRecord::Base
    belongs_to :category
    belongs_to :unit
	validates_presence_of :name, :description
	validates_uniqueness_of :name
end
