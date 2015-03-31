class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :number, null: false
      t.timestamps null: false
    end
    add_reference :phones, :office, index: true, null: false
  end
end
