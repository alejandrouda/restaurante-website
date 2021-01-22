class CreateMealCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_categories do |t|
      t.string :category_title

      t.timestamps
    end
  end
end
