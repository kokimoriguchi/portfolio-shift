class ChangeCloumnsNotnullAddUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :stores, :name, :string, null: false
    change_column :stores, :number, :integer, null: false
    change_column :stores, :password_digest, :string, null: false
  end
end
