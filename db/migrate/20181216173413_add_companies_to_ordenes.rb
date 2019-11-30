class AddCompaniesToOrdenes < ActiveRecord::Migration[5.0]
  def change
    add_column :ordenes, :companyId, :integer
  end
end
