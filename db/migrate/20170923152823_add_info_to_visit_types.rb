class AddInfoToVisitTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :visit_types, :aked_by, :int
    add_column :visit_types, :ambit, :string
    add_column :visit_types, :authority, :string
    add_column :visit_types, :legislation, :string
    add_column :visit_types, :observation, :string
    add_column :visit_types, :aproval_budget_date, :date
    add_column :visit_types, :budget_sent_date, :string
    add_column :visit_types, :aproval_date, :string
    add_column :visit_types, :print, :boolean
  end
end
