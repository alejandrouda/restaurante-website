class AddNameToDrinkCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :drink_categories, :name, :string
  end
end
