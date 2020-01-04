class CreateExpirations < ActiveRecord::Migration[5.0]
  def change
    create_table :expirations do |t|
      t.integer :companyId
      t.integer :employeeId
      t.integer :studyId
      t.date :start_date
      t.date :end_date
      t.string :status
      t.text :comments
      t.text :codigounico

      t.timestamps
    end
  end
end
