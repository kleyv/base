puts "Cleaning database"
User.destroy_all
Project.destroy_all

puts "Creating user"
guest = User.create!(
  username: "guest",
  email: "guest@email.com",
  password: "password"
)

puts "Creating project"
project = Project.create!(
  name:"Default project",
  description:"Default project",
  creator: guest
)

puts "Creating project chat"
projectChat = Chat.create! chatable: project, name: "chat"
