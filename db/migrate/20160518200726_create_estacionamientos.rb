class CreateEstacionamientos < ActiveRecord::Migration
  def change
    create_table :estacionamientos do |t|
      t.string :codigo
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
