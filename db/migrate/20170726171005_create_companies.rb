class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :industryTypeId
      t.string  :industryTypeId2
      t.integer :employeeId
      t.string :name
      t.string :email
      t.string :addressDirection
      t.string :addressNumber
      t.string :floor
      t.string :departament
      t.string :cuit
      t.string :comment
      t.string :habpri
      t.string :habsec
      t.boolean :suscription
      t.integer :visitqty_min
      t.integer :visitqty_max

      t.timestamps
    end
  end
end