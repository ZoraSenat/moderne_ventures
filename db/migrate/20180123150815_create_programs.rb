class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :contact_id
      t.string :location
      t.string :category

      t.timestamps

    end
  end
end
