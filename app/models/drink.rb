class Drink < ApplicationRecord
  belongs_to :menu


  has_one :drink_category_tag, dependent: :destroy
  has_many :order_products, dependent: :destroy


  has_many :drink_categories, through: :drink_category_tags
  has_many :orders, through: :order_products

  validates :name, :price, :description, presence: true
  
end
