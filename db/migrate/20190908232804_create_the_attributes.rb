class CreateTheAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :the_attributes do |t|
      t.string :name
      t.integer :product_category_id

      t.timestamps
    end
  end
end
