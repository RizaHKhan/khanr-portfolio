FactoryBot.define do
  factory :blog do
    sequence(:title) { |n| "Title #{n}"}
    sequence(:body) { |n| "Body of Blog #{n}"}
  end
end