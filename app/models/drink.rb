class Drink < ActiveRecord::Base
  has_many :ingredients, through: :drink_ingredients
  has_many :drink_ingredients
end
