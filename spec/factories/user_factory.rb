FactoryGirl.define do
  factory :user do
    name "Sammy Sample"
    email "sample@example.com"
    password "password"
    password_confirmation "password"
  end
end