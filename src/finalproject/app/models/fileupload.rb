class Fileupload < ActiveRecord::Base
	belongs_to :user
	has_one :filedownload
	mount_uploader :filename, FileUploader
	acts_as_votable
	validates :filename, presence: true
	validates :user_id, presence: true
end
