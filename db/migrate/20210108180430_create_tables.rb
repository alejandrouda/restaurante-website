class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :tables do |t|
      t.integer :table_number
      t.string :section
      t.references :restaurante, null: false, foreign_key: true

      t.timestamps
    end
  end
end
