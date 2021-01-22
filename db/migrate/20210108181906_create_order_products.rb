class CreateOrderProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_products do |t|
      t.references :meal, null: false, foreign_key: true
      t.references :drink, null: false, foreign_key: true
      t.references :set_menu, null: false, foreign_key: true
      t.references :table, null: false, foreign_key: true

      t.timestamps
    end
  end
end
