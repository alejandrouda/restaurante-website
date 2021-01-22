class RemoveDrinkTypeFromMenus < ActiveRecord::Migration[6.0]
  def change
    remove_column :menus, :drink_type, :boolean
  end
end
