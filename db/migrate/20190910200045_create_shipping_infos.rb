class CreateShippingInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_infos do |t|
      t.datetime :shipping_date
      t.string :contact_number
      t.float :shipping_cost
      t.integer :address_id
      t.integer :product_id
      t.boolean :delivery_status

      t.timestamps
    end
  end
end
