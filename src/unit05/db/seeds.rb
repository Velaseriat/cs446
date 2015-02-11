# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#f = File.open("books.txt", "r")

f = File.open(File.join(Rails.root, 'db', 'soldiers.txt'))
f.each_line do |line|
  #get rid of newlines
  line = line.strip!
  arr = line.split(',')
	Soldier.create(first_name: arr[0], last_name: arr[1].strip!, atk: arr[2], def: arr[3], paradigm: arr[4].strip!, brigade_id: arr[5])
end
f.close

f = File.open(File.join(Rails.root, 'db', 'brigades.txt'))
f.each_line do |line|
  #get rid of newlines
  #line = line.strip!
  #arr = line.split(',')
	#Brigade.create(name: arr[0].strip!)
	Brigade.create(name: line.strip!)
end
f.close