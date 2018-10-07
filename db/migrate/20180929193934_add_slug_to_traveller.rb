class AddSlugToTraveller < ActiveRecord::Migration[5.2]
  def change
    add_column :travellers, :slug, :string
  end
end
