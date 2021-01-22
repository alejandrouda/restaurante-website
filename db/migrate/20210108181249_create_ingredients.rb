class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.boolean :food_type
      t.boolean :drink_type

      t.timestamps
    end
  end
end
