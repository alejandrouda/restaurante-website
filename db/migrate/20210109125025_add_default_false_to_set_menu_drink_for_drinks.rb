class AddDefaultFalseToSetMenuDrinkForDrinks < ActiveRecord::Migration[6.0]
  def change
    change_column_default :drinks, :set_menu_drink, from: nil, to: false
  end
end
