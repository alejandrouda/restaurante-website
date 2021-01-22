class RemoveTypeFromMenus < ActiveRecord::Migration[6.0]
  def change
    remove_column :menus, :type, :string
  end
end
