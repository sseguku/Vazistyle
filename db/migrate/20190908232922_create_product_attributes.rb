class CreateProductAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :product_attributes do |t|
      t.integer :attribute_id
      t.integer :attribute_value_id
      t.integer :product_id

      t.timestamps
    end
  end
end
