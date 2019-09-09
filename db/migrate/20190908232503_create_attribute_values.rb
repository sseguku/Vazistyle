class CreateAttributeValues < ActiveRecord::Migration[5.2]
  def change
    create_table :attribute_values do |t|
      t.string :value
      t.string :attribute_id

      t.timestamps
    end
  end
end
