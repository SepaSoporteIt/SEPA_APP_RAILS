class CreateActs < ActiveRecord::Migration[5.0]
  def change
    create_table :acts do |t|
      t.integer :entityId
      t.integer :companyId
      t.integer :studyId
      t.date :due_date
      t.text :comments

      t.timestamps
    end
  end
end
