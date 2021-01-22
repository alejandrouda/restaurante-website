class AddGlutenFreeToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :gluten_free, :boolean
  end
end
