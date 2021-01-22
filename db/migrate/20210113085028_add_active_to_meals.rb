class AddActiveToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :active, :boolean, default: true
  end
end
