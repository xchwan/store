class AddUsedToCoupons < ActiveRecord::Migration[6.1]
  def change
    add_column :coupons, :used, :boolean, default: false
  end
end
