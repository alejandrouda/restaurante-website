class AllergenTag < ApplicationRecord
  belongs_to :allergen
  belongs_to :meal

  validates_uniqueness_of :allergen_id, scope: :meal_id
end
