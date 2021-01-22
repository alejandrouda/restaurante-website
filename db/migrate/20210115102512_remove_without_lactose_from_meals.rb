class RemoveWithoutLactoseFromMeals < ActiveRecord::Migration[6.0]
  def change
    remove_column :meals, :without_lactose, :boolean
  end
end
