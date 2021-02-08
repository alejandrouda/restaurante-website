class SetMenu < ApplicationRecord

  has_many :order_products, dependent: :destroy

  validates :name, :price, presence: true
end
