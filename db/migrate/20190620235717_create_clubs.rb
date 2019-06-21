class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.primary_key :club_id
      t.string :club_type
      t.string :club_name
      t.string :club_district
      t.string :fellowship_location
      t.string :fellowship_day
      t.datetime :fellowship_time
      t.text :signture_project
      t.integer :product_id

      t.timestamps
    end
  end
end
