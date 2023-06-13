class ChangeCloumnsNotnullAddEmployer < ActiveRecord::Migration[7.0]
  def change
    change_column :employer, :name, :string, null: false
    change_column :employer, :number, :integer, null: false
    change_column :employer, :is_manager, :boolean, null: false
  end
end
