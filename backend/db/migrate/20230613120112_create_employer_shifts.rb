class CreateEmployerShifts < ActiveRecord::Migration[7.0]
  def change
    create_table :employer_shifts do |t|
      t.references :employer, null: false, foreign_key: true
      t.references :shift_date, null: false, foreign_key: true

      t.timestamps
    end
  end
end
