class CreateCarModels < ActiveRecord::Migration[5.2]
  def change
    create_table :car_models do |t|
      t.integer :year
      t.string :manufacturer
      t.string :model
      t.string :color
      t.integer :zip
      t.integer :mileage
      t.integer :price
    end
  end
end
