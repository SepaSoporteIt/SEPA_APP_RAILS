class AddStatusToOrdenes < ActiveRecord::Migration[5.0]
  def change
  	add_column :ordenes, :status, :string
  end
end
