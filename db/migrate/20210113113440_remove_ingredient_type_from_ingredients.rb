class RemoveIngredientTypeFromIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_column :ingredients, :ingredient_type, :string
  end
end
