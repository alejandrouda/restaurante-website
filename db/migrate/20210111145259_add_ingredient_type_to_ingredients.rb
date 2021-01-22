class AddIngredientTypeToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :ingredient_type, :string
  end
end
