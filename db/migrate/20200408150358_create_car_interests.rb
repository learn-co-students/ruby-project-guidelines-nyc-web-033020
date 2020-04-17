class CreateCarInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :car_interests do |t|
      t.integer :name_id
      t.integer :model_id
    end
  end
end
