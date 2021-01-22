class CreateAllergenTags < ActiveRecord::Migration[6.0]
  def change
    create_table :allergen_tags do |t|
      t.references :allergen, null: false, foreign_key: true
      t.references :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
