class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.boolean :active
      t.boolean :food_type
      t.boolean :drink_type
      t.references :restaurante, null: false, foreign_key: true

      t.timestamps
    end
  end
end
