class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :customer_id
      t.integer :product_id
      t.integer :value

      t.timestamps
    end
  end
end
