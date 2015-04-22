class Filedownload < ActiveRecord::Base
	belongs_to :user
	has_one :fileupload
end
