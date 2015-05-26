class User < ActiveRecord::Base
	# many to many
	has_many :fabricstores
	has_many :patternstores
	has_many :fabrics, through: :fabricstores
	has_many :patterns, through: :patternstores

	# one to many
	has_many :projects
	has_many :plans
	
end
