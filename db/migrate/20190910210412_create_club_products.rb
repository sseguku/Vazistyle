class CreateClubProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :club_products do |t|
      t.integer :product_id
      t.integer :club_id

      t.timestamps
    end
  end
end
