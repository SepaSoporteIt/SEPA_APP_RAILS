class AddExternalIdToOrdenes < ActiveRecord::Migration[5.0]
  def change
  	 add_column :ordenes, :external_id, :string
  end
end
