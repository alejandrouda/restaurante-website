class CreateMealCategoryTags < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_category_tags do |t|
      t.references :meal, null: false, foreign_key: true
      t.references :meal_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
