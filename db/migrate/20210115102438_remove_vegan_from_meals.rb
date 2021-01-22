class RemoveVeganFromMeals < ActiveRecord::Migration[6.0]
  def change
    remove_column :meals, :vegan, :boolean
  end
end
