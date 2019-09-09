class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.float :unit_price
      t.float :discount
      t.integer :stock
      t.binary :photo
      t.datetime :last_purchased_at
      t.string :last_purchased_by
      t.integer :total_purchases
      t.integer :club_id
      t.integer :product_category_id

      t.timestamps
    end
  end
end
