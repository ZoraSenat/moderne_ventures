class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :industry_id
      t.string :company
      t.text :company_description
      t.string :city
      t.string :state
      t.string :website

      t.timestamps

    end
  end
end
