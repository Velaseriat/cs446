class Fileupload < ActiveRecord::Base
	belongs_to :user
	mount_uploader :filename, FileUploader
end
