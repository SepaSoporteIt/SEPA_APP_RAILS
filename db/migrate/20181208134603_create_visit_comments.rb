class CreateVisitComments < ActiveRecord::Migration[5.0]
  def change
    create_table :visit_comments do |t|
      t.string :note
      t.integer :visit_id

      t.timestamps
    end
  end
end
