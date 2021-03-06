# encoding: utf-8

class SwatchUploader < CarrierWave::Uploader::Base
  after :remove, :delete_empty_upstream_dirs

  # set allowed file types
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
    ActionController::Base.helpers.asset_path("images/" + [version_name, "default_swatch.jpg"].compact.join('_'))
  
    "/images/" + [version_name, "default_swatch.jpg"].compact.join('_')
  end

  def delete_empty_upstream_dirs
    path = ::File.expand_path(store_dir, root)
    Dir.delete(path) # fails if path not empty dir

    # path = ::File.expand_path(base_store_dir, root)
    # Dir.delete(path) # fails if path not empty dir
  rescue SystemCallError
    true # nothing, the dir is not empty
  end



  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  version :thumb do
    p "IN THUMB PROCESS"
    process :resize_to_fit => [50, 50]
  end

  version :standard do
    p "IN STANDARD PROCESS"
    process :resize_to_fill => [150, 150]
  end

 

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
