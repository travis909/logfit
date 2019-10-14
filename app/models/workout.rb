class Workout < ApplicationRecord
  validates :date, presence: true

  has_many :exercises, allow_nil: true
  accepts_nested_attributes_for :exercises
end
