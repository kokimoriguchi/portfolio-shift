class Stores < ActiveRecord::Migration[7.0]
  def change
    drop_table :stores
  end
end
