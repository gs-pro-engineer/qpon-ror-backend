class CreateConsortia < ActiveRecord::Migration
  def change
    create_table :consortia do |t|
      t.string :name

      t.timestamps
    end
  end
end
