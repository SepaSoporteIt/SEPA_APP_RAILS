class AddAddressSpec < ActiveRecord::Migration[5.0]
  def change
  	add_column :companies, :localidad, :string
  	add_column :companies, :partido, :string
  end
end
