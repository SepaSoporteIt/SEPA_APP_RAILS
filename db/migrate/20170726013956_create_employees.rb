class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :tlf
      t.boolean :tipo

      t.timestamps
    end
  end
end
