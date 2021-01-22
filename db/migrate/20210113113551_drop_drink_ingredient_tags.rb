class DropDrinkIngredientTags < ActiveRecord::Migration[6.0]
  def change
    drop_table :drink_ingredient_tags
  end
end
