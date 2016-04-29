class Ingredient < ActiveRecord::Base
  has_many :drinks, through: :drink_ingredients
  has_many :drink_ingredients
end
