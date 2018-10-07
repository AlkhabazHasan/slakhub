class ChangeColumnName2 < ActiveRecord::Migration[5.2]
  def change
    rename_column :travellers, :Building, :building
    rename_column :travellers, :Street, :street
    rename_column :travellers, :Postal, :postal
    rename_column :travellers, :Town, :town
    rename_column :travellers, :Country, :country
  end
end
