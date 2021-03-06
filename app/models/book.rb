class Book < ApplicationRecord
  belongs_to :coupon, optional: true
  validates :title, presence: true
  validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}

  def apply_coupon(coupon)
      self.price -= coupon.discount
      self.price = 0 if self.price < 0
      self.save
      coupon.used = true
      coupon.save
  end
end
