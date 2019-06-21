class CreateCloths < ActiveRecord::Migration[5.2]
  def change
    create_table :cloths do |t|
      t.primary_key :cloth_id
      t.string :name
      t.string :size
      t.string :color
      t.string :design
      t.integer :category_id

      t.timestamps
    end
  end
end
