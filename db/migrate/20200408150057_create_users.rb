class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :name do |t|
      t.string :name
      t.integer :zip_code
    end
  end
end
