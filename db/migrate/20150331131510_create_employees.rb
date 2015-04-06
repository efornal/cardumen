class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :surname
      t.string :phone
      t.text :description
      t.timestamps null: false
    end
    add_reference :employees, :office, index: true
 end
end
