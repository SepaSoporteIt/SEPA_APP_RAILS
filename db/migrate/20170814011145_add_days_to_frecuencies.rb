class AddDaysToFrecuencies < ActiveRecord::Migration[5.0]
  def change
  	add_column :frecuencies, :days, :integer
  end
end
