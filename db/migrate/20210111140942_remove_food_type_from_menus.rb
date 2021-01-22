class RemoveFoodTypeFromMenus < ActiveRecord::Migration[6.0]
  def change
    remove_column :menus, :food_type, :boolean
  end
end
