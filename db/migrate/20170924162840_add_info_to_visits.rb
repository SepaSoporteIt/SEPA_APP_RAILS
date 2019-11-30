class AddInfoToVisits < ActiveRecord::Migration[5.0]
  def change
    add_column :visits, :observation, :string
    add_column :visits, :aproval_budget_date, :date
    add_column :visits, :budget_sent_date, :string
    add_column :visits, :aproval_date, :string
    add_column :visits, :print, :boolean
  end
end
