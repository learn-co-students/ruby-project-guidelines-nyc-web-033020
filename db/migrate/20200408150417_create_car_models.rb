class CreateCarModels < ActiveRecord::Migration[5.0]
  def change
    create table :models do |t|
      t.string :models
    end
  end
end
