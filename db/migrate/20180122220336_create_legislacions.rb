class CreateLegislacions < ActiveRecord::Migration[5.0]
  def change
    create_table :legislacions do |t|
      t.string :name

      t.timestamps
    end
  end
end
