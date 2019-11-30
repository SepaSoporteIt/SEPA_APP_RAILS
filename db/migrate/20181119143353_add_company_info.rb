class AddCompanyInfo < ActiveRecord::Migration[5.0]
  def change
  	add_column :companies, :frecuencyTypeId, :int
  end
end
