class Fabric < ActiveRecord::Base
	has_many :usersfabrics
	has_many :users, through: :usersfabrics 
end
