class SetMenu < ApplicationRecord
  belongs_to :restaurante

  has_many :order_products, dependent: :destroy

  validates :name, :price, presence: true
end
