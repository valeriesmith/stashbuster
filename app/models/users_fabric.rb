class UsersFabric < ActiveRecord::Base
	belongs_to :user
	belongs_to :fabric
end
