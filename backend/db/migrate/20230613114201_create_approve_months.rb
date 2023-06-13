class CreateApproveMonths < ActiveRecord::Migration[7.0]
  def change
    create_table :approve_months do |t|
      t.integer :year, null: false
      t.integer :month, null: false
      t.boolean :is_approve, null: false

      t.timestamps
    end
  end
end
