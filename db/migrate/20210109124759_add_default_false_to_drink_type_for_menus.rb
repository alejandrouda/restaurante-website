class AddDefaultFalseToDrinkTypeForMenus < ActiveRecord::Migration[6.0]
  def change
    change_column_default :menus, :drink_type, from: nil, to: false
  end
end
