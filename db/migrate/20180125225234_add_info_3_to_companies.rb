class AddInfo3ToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :solicitadorId, :int
    add_column :companies, :abitoId, :int
    add_column :companies, :autoridadId, :int
    add_column :companies, :legislacionId, :int
  end
end
