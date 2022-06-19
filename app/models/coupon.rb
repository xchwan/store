class Coupon < ApplicationRecord
  has_many :books
  validates :code, uniqueness: true
  validates :discount, presence: true, numericality: {greater_than: 0}
  before_save :generate_code

  private
    def generate_code
      if self.code.empty?
        self.code = SecureRandom.hex[1..8].upcase
      else
        self.code = code.upcase
      end
    end
end
