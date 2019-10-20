FactoryBot.define do
  factory :workout do
    date { Faker::Date.forward(days: 23) }
    # id { Faker::IDNumber.digit }
    user
  end
end
