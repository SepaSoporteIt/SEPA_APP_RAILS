class ChangeCompaniesTypeName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :companies, :type, :companyType
  end
end
