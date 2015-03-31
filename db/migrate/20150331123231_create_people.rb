class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.timestamps null: false
    end
    add_reference :people, :office, index: true
  end
end
