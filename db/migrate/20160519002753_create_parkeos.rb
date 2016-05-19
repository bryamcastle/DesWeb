class CreateParkeos < ActiveRecord::Migration
  def change
    create_table :parkeos do |t|
      t.string :codigo
      t.text :description

      t.timestamps null: false
    end
  end
end
