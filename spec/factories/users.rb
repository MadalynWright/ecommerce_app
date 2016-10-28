FactoryGirl.define do
  factory :user do
    name "User"
    email "user@user.com"
    password "password"
    password_confirmation "password"
    admin false
  end
end
