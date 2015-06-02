require 'file_size_validator'

class Fabric < ActiveRecord::Base
	has_many :fabricstores
	has_many :users, :through => :fabricstores

	mount_uploader :swatch, SwatchUploader

	validates :name, presence: true
	validates :color, presence: true
	validates :length, presence: true, numericality: true
	validates :width, presence: true, numericality: true

	validates :swatch, file_size: {maximum: 0.5.megabytes.to_i}


end
