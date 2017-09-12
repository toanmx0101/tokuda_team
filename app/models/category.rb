class Category < ApplicationRecord
  has_many :products

  validates_associated :products

  validates :made_in, presence: true, length: {maximum: 10},
    uniqueness: {case_sensitive: false}
end
