class AddRoundIdToDestinations < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :round_id, :integer
  end
end
