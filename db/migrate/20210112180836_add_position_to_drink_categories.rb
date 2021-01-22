class AddPositionToDrinkCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :drink_categories, :position, :integer
  end
end
