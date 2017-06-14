50.times do
  project = Project.create(title: Faker::Lorem.word, created_by: User.first.id)
  project.tasks.create(name: Faker::Lorem.word, done: false)
end