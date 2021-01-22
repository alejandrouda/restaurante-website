class Filter < ApplicationRecord
  has_many :filter_tags, dependent: :destroy

  has_many :meals, through: :filter_tags

  validates :name, presence: true
  validates :filter_title, presence: true
end
