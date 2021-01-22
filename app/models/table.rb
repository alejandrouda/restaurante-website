class Table < ApplicationRecord
  belongs_to :restaurante

  has_many :order_products, dependent: :destroy
  has_many :orders, through: :order_products

  validates :table_number, :section, :code, presence: true
end
