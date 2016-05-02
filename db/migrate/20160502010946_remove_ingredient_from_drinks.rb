class RemoveIngredientFromDrinks < ActiveRecord::Migration
  def change
    remove_column :drinks, :ingredient, :string
  end
end
