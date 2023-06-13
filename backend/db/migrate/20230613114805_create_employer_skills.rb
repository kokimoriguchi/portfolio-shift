class CreateEmployerSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :employer_skills do |t|
      t.references :employer, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
