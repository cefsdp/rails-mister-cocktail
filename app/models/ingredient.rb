class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :cocktails, through: :doses, dependent: :destroy

  validates_presence_of :name, on: :create, message: "can't be blank"
  validates_uniqueness_of :name, on: :create, message: 'must be unique'
end