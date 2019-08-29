class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :type
      t.string :fellowship_day
      t.time :fellowship_time
      t.integer :fellowship_location      
      t.string :signture_project
      t.string :other_projects
      t.integer :product_id

      t.timestamps
    end
  end
end
