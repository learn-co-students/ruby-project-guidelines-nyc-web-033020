class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :username do |t|
      t.string :username
      t.integer :zip_code
    end
  end
end
