class CreatePizzaTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :pizza_types do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
