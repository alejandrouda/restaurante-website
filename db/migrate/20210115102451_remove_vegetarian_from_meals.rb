class RemoveVegetarianFromMeals < ActiveRecord::Migration[6.0]
  def change
    remove_column :meals, :vegetarian, :boolean
  end
end
