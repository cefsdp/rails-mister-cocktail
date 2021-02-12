class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses

  validates_presence_of :name, on: :create, message: "can't be blank"
  validates_uniqueness_of :name, on: :create, message: 'must be unique'
end
