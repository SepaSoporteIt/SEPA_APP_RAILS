class AddStateToVisits < ActiveRecord::Migration[5.0]
  def change
    add_column :visits, :state, :string
    add_column :visits, :external_id, :string
  end
end
