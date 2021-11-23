class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.string :last_name
      t.string :dni
      t.string :nickname
      t.string :mail

      t.timestamps
    end
  end
end
