class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create table :name do |t|
      t.string :name
    end
  end
end
