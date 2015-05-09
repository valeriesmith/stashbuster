class User < ActiveRecord::Base
	# many to many
	has_many :usersfabrics
	has_many :userspatterns
	has_many :fabrics, through: :usersfabrics
	has_many :patterns, through: :userspatterns

	# one to many
	has_many :projects
	has_many :plans
	
end
