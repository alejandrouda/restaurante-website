class MealCategory < ApplicationRecord
  has_many :meal_category_tags, dependent: :destroy

  has_many :meals, through: :meal_category_tags

  validates :name, presence: true
  validates :category_title, presence: true
end
