class RemoveMailFromModels < ActiveRecord::Migration

  def self.up
  	remove_column :admins, :mail
  	remove_column :users, :mail
  end

  def self.down
  	add_column :users, :mail
  	add_column :admins, :mail
  end
end
