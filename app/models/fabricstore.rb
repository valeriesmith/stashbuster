class Fabricstore < ActiveRecord::Base
	belongs_to :user
	belongs_to :fabric
end
