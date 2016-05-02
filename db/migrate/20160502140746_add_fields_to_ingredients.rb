class AddFieldsToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :alcohol, :text
    add_column :ingredients, :mixer, :text
    add_column :ingredients, :suggestion, :text
  end
end
