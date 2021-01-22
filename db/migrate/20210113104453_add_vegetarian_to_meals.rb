class AddVegetarianToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :vegetarian, :boolean
  end
end
