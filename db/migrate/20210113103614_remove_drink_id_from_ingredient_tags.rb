class RemoveDrinkIdFromIngredientTags < ActiveRecord::Migration[6.0]
  def change
    remove_reference :ingredient_tags, :drink, null: false, foreign_key: true
  end
end
