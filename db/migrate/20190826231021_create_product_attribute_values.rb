class CreateProductAttributeValues < ActiveRecord::Migration[5.2]
  def change
    create_table :product_attribute_values do |t|
      t.integer :product_id
      t.integer :attribute_value_id

      t.timestamps
    end
  end
end
