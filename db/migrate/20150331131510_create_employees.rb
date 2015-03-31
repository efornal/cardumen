class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name, null: false
      t.string :surname, null: false
      t.timestamps null: false
    end
    add_reference :employees, :office, index: true
    add_reference :employees, :phone,  index: true
  end
end
