# frozen_string_literal: true

exit unless Rails.env.development?

puts 'Deleting the Data'
Workout.delete_all
User.delete_all

puts 'Creating User'
user = FactoryBot.create(:user, email: 'test@example.com')

puts 'Creating Workout'
5.times do
  FactoryBot.create(:workout, user: user)
end