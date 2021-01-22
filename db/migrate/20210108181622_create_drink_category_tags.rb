class CreateDrinkCategoryTags < ActiveRecord::Migration[6.0]
  def change
    create_table :drink_category_tags do |t|
      t.references :drink, null: false, foreign_key: true
      t.references :drink_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
