class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :name, presence: true
  validates :description, presence: true
  validates :ingredient, uniqueness: {scope: :cocktail}
end
