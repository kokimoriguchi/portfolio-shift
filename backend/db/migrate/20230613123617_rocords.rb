class Rocords < ActiveRecord::Migration[7.0]
  def change
    drop_table :employer_shifts
    drop_table :employer_skills
  end
end
