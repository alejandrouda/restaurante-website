class AddMenuTypeToMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :menu_type, :string
  end
end
