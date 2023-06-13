class RenameEmployerToEmployers < ActiveRecord::Migration[7.0]
  def change
    rename_table :employer, :employers
  end
end
