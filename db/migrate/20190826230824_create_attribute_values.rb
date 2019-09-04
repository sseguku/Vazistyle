class CreateAttributeValues < ActiveRecord::Migration[5.2]
  def change
    create_table :attribute_values do |t|
      t.integer :attribute_id
      t.string :value_name
      t.string :value_description

      t.timestamps
    end
  end
end
