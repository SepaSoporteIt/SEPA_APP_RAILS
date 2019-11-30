class AddOrdersToVisits < ActiveRecord::Migration[5.0]
  def change
    add_column :visits, :order_id, :integer
  end
end
