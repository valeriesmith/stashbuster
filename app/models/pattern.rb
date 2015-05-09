class Pattern < ActiveRecord::Base
	has_many :userspatterns
	has_many :users, through: :userspatterns 
end
