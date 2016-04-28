class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :ingredient
      t.reference :user_id

      t.timestamps null: false
    end
  end
end
