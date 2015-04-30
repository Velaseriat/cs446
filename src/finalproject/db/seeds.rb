# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Filefantasy.create()

User.create! :first_name => "Admin", :last_name => "Strator", :age => 16, :email => "admin@mines.edu", :password => "administrator", :password_confirmation => "administrator", :user_type => :admin
User.create! :first_name => "Kyle", :last_name => "Plastic", :age => 16, :email => "user1@mines.edu", :password => "user1user1", :password_confirmation => "user1user1", :user_type => :user
User.create! :first_name => "Jim", :last_name => "Trash", :age => 16, :email => "user2@mines.edu", :password => "user1user2", :password_confirmation => "user1user2", :user_type => :user
User.create! :first_name => "Joe", :last_name => "Floating", :age => 16, :email => "user3@mines.edu", :password => "user1user3", :password_confirmation => "user1user3", :user_type => :user
User.create! :first_name => "Rob", :last_name => "Wind", :age => 16, :email => "user4@mines.edu", :password => "user1user4", :password_confirmation => "user1user4", :user_type => :user


Fileupload.create(:user_id => 2, :filename => File.open(File.join(Rails.root, "public/files/images/6.jpg")))
Fileupload.create(:user_id => 2, :filename => File.open(File.join(Rails.root, "public/files/images/5.jpg")))
Fileupload.create(:user_id => 3, :filename => File.open(File.join(Rails.root, "public/files/images/4.jpg")))

Filedownload.create(:user_id => 3, :fileupload_id => 1)
Filedownload.create(:user_id => 2, :fileupload_id => 2)
Filedownload.create(:user_id => 3, :fileupload_id => 2)

Comment.create(:user_id => 2, :filedownload_id => 1, :data => "HURR DURR")
Comment.create(:user_id => 3, :filedownload_id => 1, :data => "HURR DURR")
Comment.create(:user_id => 2, :filedownload_id => 2, :data => "HURR DURR")
Comment.create(:user_id => 3, :filedownload_id => 2, :data => "HURR DURR")

User.create! :first_name => "Kyle1", :last_name => "Plastic", :age => 16, :email => "user111@mines.edu", :password => "user1user1", :password_confirmation => "user1user1", :user_type => :user
User.create! :first_name => "Jim1", :last_name => "Trash", :age => 16, :email => "user222@mines.edu", :password => "user1user2", :password_confirmation => "user1user2", :user_type => :user
User.create! :first_name => "Joe1", :last_name => "Floating", :age => 16, :email => "user333@mines.edu", :password => "user1user3", :password_confirmation => "user1user3", :user_type => :user
User.create! :first_name => "Rob1", :last_name => "Wind", :age => 16, :email => "user444@mines.edu", :password => "user1user4", :password_confirmation => "user1user4", :user_type => :user


Fileupload.create(:user_id => 4, :filename => File.open(File.join(Rails.root, "public/files/images/6.jpg")))
Fileupload.create(:user_id => 4, :filename => File.open(File.join(Rails.root, "public/files/images/5.jpg")))
Fileupload.create(:user_id => 5, :filename => File.open(File.join(Rails.root, "public/files/images/4.jpg")))

Filedownload.create(:user_id => 5, :fileupload_id => 3)
Filedownload.create(:user_id => 4, :fileupload_id => 4)
Filedownload.create(:user_id => 5, :fileupload_id => 4)

Comment.create(:user_id => 2, :filedownload_id => 1, :data => "HURa sdf adsfR DURR")
Comment.create(:user_id => 3, :filedownload_id => 1, :data => "HURR Da sdfaURR")
Comment.create(:user_id => 2, :filedownload_id => 2, :data => "HURR DURasdf aR")
Comment.create(:user_id => 3, :filedownload_id => 2, :data => "HURa dfafds asdf R DURR")
User.create! :first_name => "Kyle2", :last_name => "Plastic", :age => 16, :email => "user1111@mines.edu", :password => "user1user1", :password_confirmation => "user1user1", :user_type => :user
User.create! :first_name => "Jim2", :last_name => "Trash", :age => 16, :email => "user2222@mines.edu", :password => "user1user2", :password_confirmation => "user1user2", :user_type => :user
User.create! :first_name => "Joe2", :last_name => "Floating", :age => 16, :email => "user3333@mines.edu", :password => "user1user3", :password_confirmation => "user1user3", :user_type => :user
User.create! :first_name => "Rob2", :last_name => "Wind", :age => 16, :email => "user4444@mines.edu", :password => "user1user4", :password_confirmation => "user1user4", :user_type => :user


Fileupload.create(:user_id => 6, :filename => File.open(File.join(Rails.root, "public/files/images/6.jpg")))
Fileupload.create(:user_id => 6, :filename => File.open(File.join(Rails.root, "public/files/images/5.jpg")))
Fileupload.create(:user_id => 7, :filename => File.open(File.join(Rails.root, "public/files/images/4.jpg")))

Filedownload.create(:user_id => 7, :fileupload_id => 5)
Filedownload.create(:user_id => 6, :fileupload_id => 6)
Filedownload.create(:user_id => 7, :fileupload_id => 6)

Comment.create(:user_id => 2, :filedownload_id => 1, :data => "HURRasdf asdf  DURR")
Comment.create(:user_id => 3, :filedownload_id => 1, :data => "HURR asdf a DURR")
Comment.create(:user_id => 2, :filedownload_id => 2, :data => "HURR asd fa DURR")
Comment.create(:user_id => 3, :filedownload_id => 2, :data => "HURR asdf a  DURR")
User.create! :first_name => "Kyle3", :last_name => "Plastic", :age => 16, :email => "user11111@mines.edu", :password => "user1user1", :password_confirmation => "user1user1", :user_type => :user
User.create! :first_name => "Jim3", :last_name => "Trash", :age => 16, :email => "user22222@mines.edu", :password => "user1user2", :password_confirmation => "user1user2", :user_type => :user
User.create! :first_name => "Joe3", :last_name => "Floating", :age => 16, :email => "user33333@mines.edu", :password => "user1user3", :password_confirmation => "user1user3", :user_type => :user
User.create! :first_name => "Rob3", :last_name => "Wind", :age => 16, :email => "user44444@mines.edu", :password => "user1user4", :password_confirmation => "user1user4", :user_type => :user


Fileupload.create(:user_id => 8, :filename => File.open(File.join(Rails.root, "public/files/images/6.jpg")))
Fileupload.create(:user_id => 8, :filename => File.open(File.join(Rails.root, "public/files/images/5.jpg")))
Fileupload.create(:user_id => 9, :filename => File.open(File.join(Rails.root, "public/files/images/4.jpg")))

Filedownload.create(:user_id => 9, :fileupload_id => 7)
Filedownload.create(:user_id => 8, :fileupload_id => 8)
Filedownload.create(:user_id => 9, :fileupload_id => 8)

Comment.create(:user_id => 2, :filedownload_id => 1, :data => "HURR asdfafsdDURR")
Comment.create(:user_id => 3, :filedownload_id => 1, :data => "HURR asdsafdfas  dafsDURR")
Comment.create(:user_id => 2, :filedownload_id => 2, :data => "HURR aadfsd  fasdf asDURR")
Comment.create(:user_id => 3, :filedownload_id => 2, :data => "HURR asdfafff  adf asdf asdfafd DURR")