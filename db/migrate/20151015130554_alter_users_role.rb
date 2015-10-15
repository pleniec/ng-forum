class AlterUsersRole < ActiveRecord::Migration
  def change
    remove_column :users, :role
    add_column :users, :role, :integer, default: 1, null: false
  end
end
