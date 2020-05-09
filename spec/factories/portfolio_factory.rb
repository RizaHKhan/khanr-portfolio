FactoryBot.define do
  factory :portfolio do
    sequence(:title) { |n| "Title #{n}"}
    sequence(:body) { |n| "Body #{n}"}
  end
end