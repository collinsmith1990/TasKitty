# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
User.create!(first_name: "Collin", last_name: "Smith", email: "Collin@gmail.com",
             password: "testpass", password_confirmation: "testpass")

5.times do |n|
  title = Faker::Name.name
  Project.create!(title: title)
end

#10.times do |n|
#  first_name = Faker::Name.name
#  last_name = Faker::Name.name
#  email = "#{first_name}#{last_name}#{n}@example.com"
#  User.create!(first_name: first_name, last_name: last_name, email: email, password: "testpass", password_confirmation: "testpass")
#end

projects = Project.all
projects.each do |project|
  20.times do
    content = Faker::Lorem.sentence(1)
    Task.create!(content: content, project_id: project.id)
  end 
end
