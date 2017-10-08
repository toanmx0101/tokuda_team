class Sale < ApplicationRecord
  belongs_to :product

  validates_associated :product
  validates :sale_off, presence: true, numericality: true
end
