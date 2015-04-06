class AttachmentUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    'public/pets/images'
  end

  def extension_white_list
    %w(gif jpg png)
  end
end
