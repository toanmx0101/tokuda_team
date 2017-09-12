class OrderDetail < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :order_id, presence: true, uniqueness: {case_sensitive: false}
  validates :product, presence: true
  validates :size, presence: true, inclusion: {in: %w{large medium small}}
  validates :color, presence: true
  validates :number, presence: true, numericality: true
end
