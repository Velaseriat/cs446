# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Filefantasy.create()

User.create! :first_name => "Admin", :last_name => "Strator", :age => 16, :email => "admin@mines.edu", :password => "administrator", :password_confirmation => "administrator", :user_type => :admin
User.create! :first_name => "User", :last_name => "1", :age => 16, :email => "user1@mines.edu", :password => "user1user1", :password_confirmation => "user1user1", :user_type => :user
User.create! :first_name => "User", :last_name => "2", :age => 16, :email => "user2@mines.edu", :password => "user1user2", :password_confirmation => "user1user2", :user_type => :user
User.create! :first_name => "User", :last_name => "3", :age => 16, :email => "user3@mines.edu", :password => "user1user3", :password_confirmation => "user1user3", :user_type => :user
User.create! :first_name => "User", :last_name => "4", :age => 16, :email => "user4@mines.edu", :password => "user1user4", :password_confirmation => "user1user4", :user_type => :user


Fileupload.create(:user_id => 2, :filename => File.open(File.join(Rails.root, "public/files/images/6.jpg")))
Fileupload.create(:user_id => 2, :filename => File.open(File.join(Rails.root, "public/files/images/6.jpg")))
Fileupload.create(:user_id => 2, :filename => File.open(File.join(Rails.root, "public/files/images/6.jpg")))

Filedownload.create(:user_id => 3, :fileupload_id => 1)
Filedownload.create(:user_id => 2, :fileupload_id => 2)
Filedownload.create(:user_id => 3, :fileupload_id => 2)

Comment.create(:user_id => 2, :filedownload_id => 1, :data => "HURR DURR")
Comment.create(:user_id => 3, :filedownload_id => 1, :data => "HURR DURR")
Comment.create(:user_id => 2, :filedownload_id => 2, :data => "HURR DURR")
Comment.create(:user_id => 3, :filedownload_id => 2, :data => "HURR DURR")