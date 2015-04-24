class Filedownload < ActiveRecord::Base
	belongs_to :user
	belongs_to :fileupload
	has_many :comments
end
