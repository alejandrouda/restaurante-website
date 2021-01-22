class CreateSetMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :set_menus do |t|
      t.string :name
      t.float :price
      t.boolean :active
      t.references :restaurante, null: false, foreign_key: true

      t.timestamps
    end
  end
end
