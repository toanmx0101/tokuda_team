class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :orders

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates_associated :orders
  validates :email, presence: true, length: {maximum: 255},
    format: {with: Devise.email_regexp}, uniqueness: {case_sensitive: false}
  validates :password, presence: true,
    length: {within: Devise.password_length}, allow_nil: true
  validates :name, presence: true, length: {maximum: 50}
  validates :phone, presence: true, length: {minimum: 9, maximum: 15},
    numericality: true
  validates :sex, presence: true
  validates :address, presence: true
  validates :role, presence: true
  validates :avatar, image: {max_width: 1024, max_height: 768}

  mount_uploader :avatar, AvatarUploader
end
