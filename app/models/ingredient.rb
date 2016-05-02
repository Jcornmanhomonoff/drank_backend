class Ingredient < ActiveRecord::Base
  belongs_to :drinks, inverse_of: :ingredients
  has_many :drink_ingredients
end
