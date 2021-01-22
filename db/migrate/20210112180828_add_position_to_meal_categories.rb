class AddPositionToMealCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :meal_categories, :position, :integer
  end
end
