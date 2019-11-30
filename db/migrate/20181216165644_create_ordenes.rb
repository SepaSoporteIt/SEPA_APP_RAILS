class CreateOrdenes < ActiveRecord::Migration[5.0]
  def change
    create_table :ordenes do |t|
      t.string :direccion
      t.string :localidad
      t.integer :localidad_id
      t.integer :industria_id
      t.string :contacto
      t.integer :contacto_id
      t.string :cuit
      t.string :celular
      t.string :email
      t.string :telefono
      t.integer :estatus_id
      t.string :prioridad
      t.integer :prioridad_id
      t.date :vencimiento

      t.timestamps
    end
  end
end
