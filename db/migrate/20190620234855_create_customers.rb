class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.primary_key :customer_id
      t.string :first_name
      t.string :last_name
      t.text :address
      t.integer :club_id
      t.string :city
      t.string :phone_number
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
