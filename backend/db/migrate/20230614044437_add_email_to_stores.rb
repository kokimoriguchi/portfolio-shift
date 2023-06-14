class AddEmailToStores < ActiveRecord::Migration[7.0]
  def change
    add_column :stores, :email, :string
    add_index :stores, :email, unique: true
  end
end
