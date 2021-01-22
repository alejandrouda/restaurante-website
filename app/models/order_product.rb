class OrderProduct < ApplicationRecord
  belongs_to :meal
  belongs_to :drink
  belongs_to :set_menu
  belongs_to :table

  belongs_to :orders
end
