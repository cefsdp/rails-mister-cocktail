class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates_presence_of :description, on: :create, message: "can't be blank"
  validates_presence_of :cocktail, on: :create, message: "can't be blank"
  validates_presence_of :ingredient, on: :create, message: "can't be blank"
  validates_uniqueness_of :cocktail, scope: [:ingredient]
end
