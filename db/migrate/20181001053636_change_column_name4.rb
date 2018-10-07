class ChangeColumnName4 < ActiveRecord::Migration[5.2]
  def change
    rename_column :hotels, :city, :town
  end
end
