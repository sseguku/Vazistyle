class AddMissingColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :username, :string
    add_column :customers, :password, :string
    add_column :customers, :active_status, :boolean
  end
end
