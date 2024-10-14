# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
 # students = Student.create(
 # 	name: "aditya",
 # 	last_name: "goutam",
 # 	age: 25,
 # 	email: "aadi420@gmail.com",
 # 	contact_number: 8878370482
 # 	)
 # students = Student.new(
 # 	name: "deepak",
 # 	last_name: "yadav",
 # 	age: 24,
 # 	email: "deepaky@gmail.com",
 # 	contact_number: 9836048680
 # 	)
 # students.save
 Student.all.each do |student|
 	student.blogs.create(title: "dummy blog for student #{student.id}", body: "creating data for assoiciation has many and belong to")
 	student.blogs.create(title: "dummy blog for student #{student.id}", body: "creating data for assoiciation has many and belong to")
 end
 AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?