class CreateLocalidadPartidos < ActiveRecord::Migration[5.0]
  def change
    create_table :localidad_partidos do |t|
      t.text :localidad
      t.text :partido

      t.timestamps
    end
  end
end
