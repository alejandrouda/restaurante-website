class AddDefaultFalseToFoodTypeForIngredients < ActiveRecord::Migration[6.0]
  def change
    change_column_default :ingredients, :food_type, from: nil, to: false
  end
end
