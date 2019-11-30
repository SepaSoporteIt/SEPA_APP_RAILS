class AddTypeToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :type, :string
  end
end
