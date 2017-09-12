class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  VALID_PHONE_REGEX = \(?\d+\)?[-.\s]?\d+[-.\s]?\d+
  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {maximum: 255},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {minimum: 6}, allow_nil: true
  validates :phone, presence: true, format: {with: VALID_PHONE_REGEX}
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
end
