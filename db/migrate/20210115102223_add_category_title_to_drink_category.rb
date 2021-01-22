class AddCategoryTitleToDrinkCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :drink_categories, :category_title, :string
  end
end
