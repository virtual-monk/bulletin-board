# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  process :resize_to_fit => [200, 200]

  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
