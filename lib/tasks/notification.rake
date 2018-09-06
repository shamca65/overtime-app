namespace :notification do
  desc "Send SMS notification to employees asking them to log in if they had overtime or not"
  task sms: :environment do
    puts "I'm in a rake task!"
  end

end
