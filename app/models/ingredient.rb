class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, uniqueness: true
  # TODO: add validation
  # You can’t delete an ingredient if it is used by at least one cocktail.
end
