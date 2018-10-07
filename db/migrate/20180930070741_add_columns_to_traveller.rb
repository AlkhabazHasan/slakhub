class AddColumnsToTraveller < ActiveRecord::Migration[5.2]
  def change
    add_column :travellers, :Building, :string
    add_column :travellers, :Street, :string
    add_column :travellers, :Postal, :string
    add_column :travellers, :Town, :string
    add_column :travellers, :Country, :string
  end
end
