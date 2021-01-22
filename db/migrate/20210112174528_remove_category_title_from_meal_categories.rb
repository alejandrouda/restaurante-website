class RemoveCategoryTitleFromMealCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :meal_categories, :category_title, :string
  end
end
