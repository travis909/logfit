class Workout < ApplicationRecord
  validates :date, presence: true

  has_many :exercises
  accepts_nested_attributes_for :exercises
end
