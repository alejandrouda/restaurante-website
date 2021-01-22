class AddDefaultFalseToSetMenuMealForMeals < ActiveRecord::Migration[6.0]
  def change
    change_column_default :meals, :set_menu_meal, from: nil, to: false
  end
end
