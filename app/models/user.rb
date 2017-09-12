class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.\.]*xyz\.com\z/i
  has_many :order

  validates_associated :orders

  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, uniqueness: true, confirmation: true,
    format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {minimum: 6}, confirmation: true,
    allow_nil: true
  validates :phone, presence: true, length: {minimum: 9, maximum: 15},
    numericality: true
  validates :sex, presence: true
  validates :address, presence: true
  validates :role, presence: true

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
end
