class Comment < ActiveRecord::Base
	belongs_to :user
	has_one :filedownload
end
