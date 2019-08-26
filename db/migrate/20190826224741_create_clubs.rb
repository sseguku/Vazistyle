class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :type
      t.string :fellowship_day
      t.time :fellowship_time
      t.string :signture_project
      t.string :other_projects
      t.integer :address_id
      t.integer :product_id

      t.timestamps
    end
  end
end
