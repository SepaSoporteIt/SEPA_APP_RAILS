class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :companyId
      t.string :comment
      t.date :fecha
      t.date :modificacion
      t.timestamps
    end
  end
end
