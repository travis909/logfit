class Workout < ApplicationRecord
  validates :date, presence: true

  belongs_to :user
  has_many :exercises, dependent: :destroy
  accepts_nested_attributes_for :exercises, allow_destroy: true, reject_if: proc{ |attr| attr['name'].blank?}
end
