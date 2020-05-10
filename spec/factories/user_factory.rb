FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "First#{n} Last"}
    sequence(:password) { |n| "Password#{n}"}
    sequence(:email) { |n| "email#{n}@gmail.com"}
  end
end