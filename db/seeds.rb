# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Deleting existing roles..."
roles = Role.all
roles.each { |role| role.destroy } if roles.present?

puts "Adding default roles"
%w(admin user).each do |name|
  Role.create(:title => name)
end

puts "Deleting existing users..."
users = User.all
users.each { |user| user.destroy } if users.present?

puts "adding Admin User"
role = Role.where(:title => "admin").first
user = User.new(:email => "admin@ej7.com", :fname => 'admin', :password => "admin123")
user.save!
user.role = role

