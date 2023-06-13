class RenameEmployeesToEmployer < ActiveRecord::Migration[7.0]
  def change
    rename_table :employees, :employer
  end
end
