class CreateCouponTypes < ActiveRecord::Migration
  def change
    create_table :coupon_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
