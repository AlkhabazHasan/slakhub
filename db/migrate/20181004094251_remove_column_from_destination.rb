class RemoveColumnFromDestination < ActiveRecord::Migration[5.2]
  def change
    remove_column :destinations, :round_id
  end
end
