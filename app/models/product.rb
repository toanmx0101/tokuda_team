class Product < ApplicationRecord
  belongs_to :category
  has_one :sale
  has_many :order_detail
  has_many :order, through: :order_detail
end
