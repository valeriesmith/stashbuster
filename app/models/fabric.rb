require 'file_size_validator'

CONVERSIONS = {
	'1/8' => 0.125,
	'1/4' => 0.25,
	'3/8' => 0.375,
	'1/2' => 0.5,
	'5/8' => 0.625,
	'3/4' => 0.75,
	'7/8' => 0.875
}

class Fabric < ActiveRecord::Base
	has_many :fabricstores
	has_many :users, :through => :fabricstores

	mount_uploader :swatch, SwatchUploader

	validates :name, presence: true
	validates :color, presence: true
	validates :length, presence: true
	# validates :length, presence: true, numericality: true
	validates :width, presence: true, numericality: true

	validates :swatch, file_size: {maximum: 0.5.megabytes.to_i}


end

def convert_to_eigths
	p "foobar"
end