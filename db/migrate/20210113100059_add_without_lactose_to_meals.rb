class AddWithoutLactoseToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :without_lactose, :boolean
  end
end
