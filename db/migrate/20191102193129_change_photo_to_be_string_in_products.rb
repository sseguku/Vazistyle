class ChangePhotoToBeStringInProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :photo, :string
  end
end
