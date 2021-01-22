class CreateIngredientTags < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredient_tags do |t|
      t.references :ingredient, null: false, foreign_key: true
      t.references :meal, null: false, foreign_key: true
      t.references :drink, null: false, foreign_key: true

      t.timestamps
    end
  end
end
