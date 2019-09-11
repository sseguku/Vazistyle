class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :type
      t.string :fellowship_day
      t.string :fellowship_time
      t.string :fellowship_location

      t.timestamps
    end
  end
end
