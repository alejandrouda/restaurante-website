class Restaurante < ApplicationRecord
  belongs_to :user

  has_one :dashboard, dependent: :destroy

  has_many :menus, dependent: :destroy
  has_many :set_menus, dependent: :destroy
  has_many :tables, dependent: :destroy

  has_one_attached :photo, dependent: :destroy

  validates :name, :photo, presence: true
end
