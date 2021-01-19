class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one :description

  validates :name, :description, presence: true, uniqueness: true
end
