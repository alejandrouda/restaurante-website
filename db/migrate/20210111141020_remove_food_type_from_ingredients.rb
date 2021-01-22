class RemoveFoodTypeFromIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_column :ingredients, :food_type, :boolean
  end
end
