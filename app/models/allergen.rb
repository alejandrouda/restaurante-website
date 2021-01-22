class Allergen < ApplicationRecord
  has_many :alergen_tags, dependent: :destroy
  has_many :meals, through: :allergen_tags

  validates :name, :icon, presence: true
end
