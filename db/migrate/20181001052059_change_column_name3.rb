class ChangeColumnName3 < ActiveRecord::Migration[5.2]
  def change
    rename_column :hotels, :address, :building
  end
end
