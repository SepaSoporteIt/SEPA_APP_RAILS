class AddEmployeeInfo < ActiveRecord::Migration[5.0]
  def change
  	add_column :employees, :celular, :string
  	add_column :employees, :comentario, :string
  end
end
