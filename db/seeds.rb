20.times do
  # Create user.
  user = User.create(name: Faker::Name.name)

  # Create task for user.
  task = user.tasks.create(description: Faker::Lorem.words(num=10).join(' '))

  # Create a comment on task by user.
  Comment.create(user: user, task: task, message: Faker::Lorem.words(num=10).join(' '))
end
