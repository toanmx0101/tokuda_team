class User < ApplicationRecord
  has_many :orders

  validates_associated :orders
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true, length: { maximum: 255 },
                    format:     { with: VALID_EMAIL_REGEX }
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
