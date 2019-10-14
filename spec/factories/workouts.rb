FactoryBot.define do
  factory :workout do
    date { '2019-10-13 21:32:21' }
    trait :with_exercise do
      association :commentable, factory: :exercise
    end
  end
end
