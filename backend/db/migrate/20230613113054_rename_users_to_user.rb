class RenameUsersToUser < ActiveRecord::Migration[7.0]
  def change
    rename_table :stores, :store
  end
end
