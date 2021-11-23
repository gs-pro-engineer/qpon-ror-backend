class CreateCouponStates < ActiveRecord::Migration
  def change
    create_table :coupon_states do |t|
      t.string :name

      t.timestamps
    end
  end
end
