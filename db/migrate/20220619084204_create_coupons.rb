class CreateCoupons < ActiveRecord::Migration[6.1]
  def change
    create_table :coupons do |t|
      t.string :code
      t.integer :discount
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
