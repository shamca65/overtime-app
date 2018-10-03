namespace :notification do
  desc "Send SMS notification to employees asking them to log in if they had overtime or not"
  task sms: :environment do
    puts "I'm in a rake task!"
  end

  desc "Send Email notification to managers about pending OT requests"
  task manager_email: :environment do
    puts "Homestarr - eeeemail!"
    # 1 Iterate over the list of pending overtime requests
    # 2 Check to see if there are any new requests
    # 3 Iterate over the list of admin users/managers
    # 4 Send a summary to each manager
    submitted_posts = Post.submitted
    admin_users = AdminUser.all
    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin.email).deliver_later
      end
    end
  end

end
