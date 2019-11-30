class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.integer :companyId
      t.integer :visitTypeId
      t.integer :frecuencyTypeId
      t.integer :employeeId
      t.date :nextVisit
      t.date :visitDate
      t.boolean :aproved
      t.date :aprovalDate

      t.timestamps
    end
  end
end
