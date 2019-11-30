class CreateAutoridads < ActiveRecord::Migration[5.0]
  def change
    create_table :autoridads do |t|
      t.string :name

      t.timestamps
    end
  end
end
