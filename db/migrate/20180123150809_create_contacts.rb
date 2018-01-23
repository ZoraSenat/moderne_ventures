class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.integer :company_id
      t.integer :source_id
      t.text :bio
      t.string :linkedin
      t.string :twitter
      t.string :title
      t.string :email
      t.string :phone
      t.string :image
      t.text :notes
      t.boolean :pilots

      t.timestamps

    end
  end
end
