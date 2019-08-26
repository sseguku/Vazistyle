class CreateShippingInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_infos do |t|
      t.string :type
      t.float :cost
      t.integer :address_id
      t.date :date

      t.timestamps
    end
  end
end
