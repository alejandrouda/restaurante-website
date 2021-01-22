class DrinkCategory < ApplicationRecord
  has_many :drink_category_tags, dependent: :destroy

  has_many :drinks, through: :drink_category_tags

  validates :name, presence: true
  validates :category_title, presence: true
end
