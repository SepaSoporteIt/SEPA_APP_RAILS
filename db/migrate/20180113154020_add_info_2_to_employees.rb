class AddInfo2ToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :especializacion, :string
  end
end
