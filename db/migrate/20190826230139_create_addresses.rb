class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :address_two
      t.string :district
      t.string :county
      t.string :sub_county
      t.string :village
      t.integer :postal_code
      t.integer :city_id

      t.timestamps
    end
  end
end
