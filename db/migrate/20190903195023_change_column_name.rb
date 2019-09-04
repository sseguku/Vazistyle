class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :clubs, :type, :club_type
  end
end
