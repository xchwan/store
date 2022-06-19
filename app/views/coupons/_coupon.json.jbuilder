json.extract! coupon, :id, :code, :discount, :begin_at, :end_at, :created_at, :updated_at
json.url coupon_url(coupon, format: :json)
