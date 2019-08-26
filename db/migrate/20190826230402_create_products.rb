class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :stock
      t.float :unit_price
      t.binary :photo
      t.integer :club_id
      t.integer :product_type_id

      t.timestamps
    end
  end
end
