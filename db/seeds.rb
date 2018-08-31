@user = User.create(email: "user@test.com", password: "password", first_name: "Reg", last_name: "User")

puts '1 user created'

5.times do |post|
  Post.create(date: Date.today, rationale: "#{post} - reg user rationale content", user_id: @user.id)
end

puts "5 regular user posts have been created"

@AdminUser= User.create(email: "admin@test.com", password: "password", first_name: "Admin", last_name: "Name", type: "AdminUser")

puts '1 admin user created'

5.times do |post|
  Post.create(date: Date.today, rationale: "#{post} - admin post rationale content", user_id: @AdminUser.id)
end

puts "5 admin user posts have been created"