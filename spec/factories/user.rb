FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user-email-#{n}@hydradam-test.com" }
    password "password"
  end
end
