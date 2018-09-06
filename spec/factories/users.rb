
FactoryBot.define do

  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name { 'Jon' }
    last_name { 'Snow' }
    email {generate :email}
    password { 'password' }
    password_confirmation { 'password' }
    phone {'5196436458'}
  end

  factory :admin_user, class: "AdminUser" do
    first_name { 'admin' }
    last_name { 'user' }
    email {generate :email}
    password { 'password' }
    password_confirmation { 'password' }
    phone {'5196436458'}
  end

  factory :non_authorized_user, class: "User" do
    first_name { 'non' }
    last_name { 'authorized' }
    email {generate :email}
    password { 'password' }
    password_confirmation { 'password' }
    phone {'5196436458'}
  end

end