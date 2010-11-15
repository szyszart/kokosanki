class Unit < ActiveRecord::Base
	validates_presence_of :name, :abbr
end
