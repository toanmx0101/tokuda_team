class Order < ApplicationRecord
  belongs_to :user
  has_many :order_detail, :dependent => :destroy
  has_many :order, through: :order_detail
end
