class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details, dependent: :destroy
  has_many :products, through: :order_detail

  validates_associated :order_details
  validates_associated :product

  validates :status, presence: true,
    inclusion: {in: %w{pending book trade finish}}
end
