class RemoveGlutenFreeFromMeals < ActiveRecord::Migration[6.0]
  def change
    remove_column :meals, :gluten_free, :boolean
  end
end
