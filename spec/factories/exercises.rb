FactoryBot.define do
  factory :exercise do
    name { 'push-ups'}
    reps { 10 }
    weight { 150 }
    weight_unit { 'lbs' }
    hours { 0 }
    minutes { 10 }
    seconds { 0 }
    workout
  end
end