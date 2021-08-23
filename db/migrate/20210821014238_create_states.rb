class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :state
      t.integer :income
      t.float :unemployment
      t.float :metro_areas
      t.float :degree
      t.string :abbreviation

      t.timestamps
    end
  end
end
