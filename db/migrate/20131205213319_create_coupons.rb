class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :name
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.float :discount
      t.integer :coupon_type_id
      t.integer :coupon_state_id
      t.integer :admin_id
      t.integer :consortium_id

      t.timestamps
    end
  end
end
