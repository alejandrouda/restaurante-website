class AddTypeToMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :type, :string
  end
end
