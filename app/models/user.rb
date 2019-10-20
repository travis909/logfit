# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :workouts

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :name, :email, presence: true
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
