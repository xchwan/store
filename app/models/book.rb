class Book < ApplicationRecord
  belongs_to :coupon
  validates :title, presence: true
  validates :price, presence: true, numericality: {greater_than: 0}

  def apply_coupon(coupon)
    if coupon.is_available?
      self.price = 0 if self.price < 0
      self.price -= coupon.discount
    else
      errors[:coupon] << "此折價卷不再有效期限內"
    end
  end
end
