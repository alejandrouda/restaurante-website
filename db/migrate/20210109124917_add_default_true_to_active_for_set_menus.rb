class AddDefaultTrueToActiveForSetMenus < ActiveRecord::Migration[6.0]
  def change
    change_column_default :set_menus, :active, from: nil, to: true
  end
end
