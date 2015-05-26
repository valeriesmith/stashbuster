class Patternstore < ActiveRecord::Base
	belongs_to :user
	belongs_to :pattern
end
