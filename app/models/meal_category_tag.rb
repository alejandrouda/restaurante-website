class MealCategoryTag < ApplicationRecord
  belongs_to :meal
  belongs_to :meal_category

  validates_uniqueness_of :meal_category_id, scope: :meal_id
end
