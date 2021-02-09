class Meal < ApplicationRecord
  belongs_to :menu

  has_many :allergen_tags, dependent: :destroy
  # has_many :ingredient_tags, dependent: :destroy
  has_one :meal_category_tag, dependent: :destroy
  has_many :filter_tags, dependent: :destroy
  has_many :order_products, dependent: :destroy

  has_many :filters, through: :filter_tags
  has_many :allergens, through: :allergen_tags
  # has_many :ingredients, through: :ingredient_tags
  has_many :meal_categories, through: :meal_category_tags
  has_many :orders, through: :order_products

  validates :name, :price, presence: true
end
