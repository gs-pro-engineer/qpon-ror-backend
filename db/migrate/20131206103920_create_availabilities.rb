class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.integer :coupon_id
      t.integer :store_id

      t.timestamps
    end
  end
end
