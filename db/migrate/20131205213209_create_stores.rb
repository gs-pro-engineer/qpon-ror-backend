class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :mail
      t.text :reference
      t.boolean :has_parking
      t.boolean :has_valet
      t.integer :store_type_id
      t.integer :consortium_id

      t.timestamps
    end
  end
end
