class CreateAmbitos < ActiveRecord::Migration[5.0]
  def change
    create_table :ambitos do |t|
      t.string :name

      t.timestamps
    end
  end
end
