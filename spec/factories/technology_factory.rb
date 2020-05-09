FactoryBot.define do
  factory :technology do
    sequence(:name) { |n| "Name#{n}"}
  end
end