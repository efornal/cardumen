class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name, null: false
      t.string :phone
      t.string :location
      t.text :description
      t.timestamps null: false
    end
  end
end
