class Fabric < ActiveRecord::Base
	has_many :fabricstores
	has_many :users, :through => :fabricstores

	mount_uploader :swatch, SwatchUploader

	validates :name, presence: true
	validates :color, presence: true
	validates :length, presence: true, numericality: true
	validates :width, presence: true, numericality: true

	# def error_messages
	# end
end
