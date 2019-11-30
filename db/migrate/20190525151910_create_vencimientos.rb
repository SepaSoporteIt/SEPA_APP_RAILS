class CreateVencimientos < ActiveRecord::Migration[5.0]
  def change
    create_table :vencimientos do |t|
      t.references :company, foreign_key: true
      t.references :employee, foreign_key: true
      t.references :study, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :status
      t.text :comments

      t.timestamps
    end
  end
end
