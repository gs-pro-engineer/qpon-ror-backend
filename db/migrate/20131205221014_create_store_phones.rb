class CreateStorePhones < ActiveRecord::Migration
  def change
    create_table :store_phones do |t|
      t.string :phone
      t.integer :store_id

      t.timestamps
    end
  end
end
