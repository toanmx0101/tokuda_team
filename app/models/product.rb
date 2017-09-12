class Product < ApplicationRecord
  belongs_to :category
  has_one :sale, dependent: :destroy
  has_many :order_details
  has_many :orders, through: :order_detail

  validates_associated :order_detail
  validates_associated :order
  validates_associated :sale

  validates :category_id, presence: true
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :type, presence: true
  validates :code, presence: true, uniqueness: true
  validates :material, presence: true
  validates :price, presence: true, numericality: true
end
