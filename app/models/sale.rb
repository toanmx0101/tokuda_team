class Sale < ApplicationRecord
  belongs_to :product

  validates :sale_off, presence: true, numericality: true
  validates :product_id, presence: true, uniqueness: true
end
