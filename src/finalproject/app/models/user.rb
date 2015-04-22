class User < ActiveRecord::Base
	has_many :comments
	has_many :fileuploads
	has_many :filedownloads
end
