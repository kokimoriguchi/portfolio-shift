class RenameStoreToStores < ActiveRecord::Migration[7.0]
  def change
    rename_table :store, :stores
  end
end
