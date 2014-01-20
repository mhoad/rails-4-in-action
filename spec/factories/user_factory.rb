FactoryGirl.define do
  factory :user do
    name "sample_user"
    password "password"
    password_confirmation "password"
  end
end