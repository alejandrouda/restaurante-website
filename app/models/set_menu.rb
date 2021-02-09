class SetMenu < ApplicationRecord

  has_many :order_products, dependent: :destroy
  
  has_one_attached :image

  validates :name, :price, presence: true
end
