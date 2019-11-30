class AddInfo2ToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :cellphone, :string
  end
end
