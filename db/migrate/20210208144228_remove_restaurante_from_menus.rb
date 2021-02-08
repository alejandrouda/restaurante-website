class RemoveRestauranteFromMenus < ActiveRecord::Migration[6.0]
  def change
    remove_reference :menus, :restaurante, null: false, foreign_key: true
  end
end
