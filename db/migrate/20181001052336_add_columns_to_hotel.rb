class AddColumnsToHotel < ActiveRecord::Migration[5.2]
  def change
    add_column :hotels, :street, :string, after: 'building'
    add_column :hotels, :postal, :string, after: 'street'
  end
end
