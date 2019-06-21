class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.primary_key :order_number
      t.integer :customer_id
      t.string :customer_name
      t.string :to_country
      t.string :to_city
      t.string :to_district
      t.string :to_village
      t.string :to_subcounty
      t.string :to_county
      t.string :to_parish
      t.string :to_cell
      t.date :ship_date
      t.string :to_phonenumber
      t.integer :product_id

      t.timestamps
    end
  end
end
