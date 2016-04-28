class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :ingredient
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
