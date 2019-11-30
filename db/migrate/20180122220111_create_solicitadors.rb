class CreateSolicitadors < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitadors do |t|
      t.string :name

      t.timestamps
    end
  end
end
