class AddCategoryTitleToMealCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :meal_categories, :category_title, :string
  end
end
