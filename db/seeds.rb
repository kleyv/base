puts "Cleaning database"
User.destroy_all

puts "Creating user"
guest = User.new(
  username: "guest",
  email: "guest@email.com",
  password: "password"
)
