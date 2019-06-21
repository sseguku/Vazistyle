class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.primary_key :category_id
      t.string :category_name

      t.timestamps
    end
  end
end
