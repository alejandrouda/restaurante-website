class Ingredient < ApplicationRecord
  has_many :ingredient_tag, dependent: :destroy
  has_many :drink_ingredient_tag, dependent: :destroy

  has_many :meals, through: :ingredient_tags
  has_many :drinks, through: :drink_ingredient_tags

  validates :name, presence: true
end
