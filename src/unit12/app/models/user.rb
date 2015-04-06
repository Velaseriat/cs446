class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable
         # :recoverable, :trackable, :validatable
  enum user_type: [ :admin, :user ]
end
