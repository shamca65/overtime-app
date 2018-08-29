@user = User.create(email: "test2@test.com", password: "password", first_name: "John", last_name: "Snow")

puts '1 user created'

User.create(email: "admin@test.com", password: "password", first_name: "Admin", last_name: "Name", type: "AdminUser")

puts '1 admin user created'

100.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 posts have been created"