class CreateCarModels < ActiveRecord::Migration[5.2]
  def change
    create_table :car_models do |t|
      t.string :manufacturer
      t.string :model
    end
  end
end
