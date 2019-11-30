class CreateStudies < ActiveRecord::Migration[5.0]
  def change
    create_table :studies do |t|
      t.string :name
      t.string :resolution
      t.string :legislation

      t.timestamps
    end
  end
end
