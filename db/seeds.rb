# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
5.times do |n|
  title = Faker::Name.name
  Project.create!(title: title)
end

projects = Project.all
projects.each do |project|
  20.times do
    content = Faker::Lorem.sentence(1)
    Task.create!(content: content, project_id: project.id)
  end 
end
