class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.integer :address_id
      t.integer :shipping_id
      t.integer :club_id

      t.timestamps
    end
  end
end
