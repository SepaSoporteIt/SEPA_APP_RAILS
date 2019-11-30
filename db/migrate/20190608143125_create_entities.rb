class CreateEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.text :comments

      t.timestamps
    end
  end
end
