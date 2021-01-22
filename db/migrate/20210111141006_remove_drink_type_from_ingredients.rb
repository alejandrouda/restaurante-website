class RemoveDrinkTypeFromIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_column :ingredients, :drink_type, :boolean
  end
end
