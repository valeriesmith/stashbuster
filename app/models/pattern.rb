class Pattern < ActiveRecord::Base
	has_many :patternstores
	has_many :users, :through => :patternstores
end
