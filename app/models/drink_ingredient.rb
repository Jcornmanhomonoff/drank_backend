class DrinkIngredient < ActiveRecord::Base
  belongs_to :drink, inverse_of: :drink_ingredients
  belongs_to :ingredient, inverse_of: :drink_ingredients
end
