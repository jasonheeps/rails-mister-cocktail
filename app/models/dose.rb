class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  has_many :doses

  validates :description, :cocktail, :ingredient, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
end
