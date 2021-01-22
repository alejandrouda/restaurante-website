class Menu < ApplicationRecord
  belongs_to :restaurante

  has_many :meals, dependent: :destroy
  has_many :drinks, dependent: :destroy

  validates :name, presence: true
  validates :menu_type, presence: true, format:
  { with: /\Ameal\z|\Adrink\z/, message: "Please choose a valid menu type" }

  def meal?
    menu_type == "meal"
  end

  def drink?
    menu_type == "drink"
  end
end
