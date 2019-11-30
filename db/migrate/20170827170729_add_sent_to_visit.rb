class AddSentToVisit < ActiveRecord::Migration[5.0]
  def change
    add_column :visits, :sent, :boolean
  end
end
