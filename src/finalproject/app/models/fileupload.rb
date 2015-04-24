class Fileupload < ActiveRecord::Base
	belongs_to :user
	has_one :filedownload
	mount_uploader :filename, FileUploader
end
