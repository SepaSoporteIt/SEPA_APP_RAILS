class AddInfoToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :mat_number, :string
    add_column :employees, :cuit, :string
    add_column :employees, :address, :string
    add_column :employees, :degree, :string
    add_column :employees, :localidadId, :int
  end
end
