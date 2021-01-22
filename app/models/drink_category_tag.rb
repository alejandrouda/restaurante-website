class DrinkCategoryTag < ApplicationRecord
  belongs_to :drink
  belongs_to :drink_category

  validates_uniqueness_of :drink_category_id, scope: :drink_id
end
