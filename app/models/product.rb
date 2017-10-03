class Product < ApplicationRecord
  belongs_to :category
  has_one :sale, dependent: :destroy
  has_many :order_details
  has_many :orders, through: :order_detail
end
