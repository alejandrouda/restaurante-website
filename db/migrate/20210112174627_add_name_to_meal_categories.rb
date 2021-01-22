class AddNameToMealCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :meal_categories, :name, :string
  end
end
