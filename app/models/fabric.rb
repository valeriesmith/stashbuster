class Fabric < ActiveRecord::Base
	has_many :fabricstores
	has_many :users, :through => :fabricstores

	mount_uploader :swatch, SwatchUploader
end
