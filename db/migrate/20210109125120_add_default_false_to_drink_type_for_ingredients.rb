class AddDefaultFalseToDrinkTypeForIngredients < ActiveRecord::Migration[6.0]
  def change
    change_column_default :ingredients, :drink_type, from: nil, to: false
  end
end
