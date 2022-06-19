class Coupon < ApplicationRecord
  has_many :books
  validates :code, uniqueness: true
  validates :discount, presence: true, numericality: {greater_than: 0}

end
