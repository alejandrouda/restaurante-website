class IngredientTag < ApplicationRecord
  belongs_to :ingredient
  belongs_to :meal

  validates_uniqueness_of :ingredient_id, scope: :meal_id
end
