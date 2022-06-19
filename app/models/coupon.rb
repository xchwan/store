class Coupon < ApplicationRecord
  has_many :books
  validates :code, uniqueness: true
  validates :discount, presence: true, numericality: {greater_than: 0}
  before_save :generate_code

  def is_available?
    (begin_at < Time.current) && (end_at > Time.current)
  end

  private
    def generate_code
      if self.code.empty?
        self.code = SecureRandom.hex[1..8].upcase
      else
        self.code = code.upcase
      end
    end
end
