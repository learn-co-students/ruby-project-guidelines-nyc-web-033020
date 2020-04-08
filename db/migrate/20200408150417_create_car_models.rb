class CreateCarModels < ActiveRecord::Migration[5.0]
  def change
    create_table :manufacturers do |t|
      t.string :manufacturer
      t.string :model
    end
  end
end
