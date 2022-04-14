puts "Cleaning database"
User.destroy_all

puts "Creating user"
guest = User.create!(
  username: "guest",
  email: "guest@email.com",
  password: "password"
)
