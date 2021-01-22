class AddDefaultTrueToActiveForMenus < ActiveRecord::Migration[6.0]
  def change
    change_column_default :menus, :active, from: nil, to: true
  end
end
