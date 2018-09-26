class CreateWorkspaces < ActiveRecord::Migration[5.2]
  def change
    create_table :workspaces do |t|
      t.string :name
      t.string :subdomain
      t.string :avatar
      t.string :url

      t.timestamps
    end
  end
end
