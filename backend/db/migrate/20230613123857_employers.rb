class Employers < ActiveRecord::Migration[7.0]
  def change
    drop_table :employers
  end
end
