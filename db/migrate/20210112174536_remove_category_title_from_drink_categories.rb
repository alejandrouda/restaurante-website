class RemoveCategoryTitleFromDrinkCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :drink_categories, :category_title, :string
  end
end
