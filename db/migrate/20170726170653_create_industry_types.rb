class CreateIndustryTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :industry_types do |t|
      t.string :name
      t.integer :ciiu
      t.timestamps
    end
  end
end
