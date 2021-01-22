class FilterTag < ApplicationRecord
  belongs_to :meal
  belongs_to :filter

  validates_uniqueness_of :filter_id, scope: :meal_id
end
