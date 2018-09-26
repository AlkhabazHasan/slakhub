class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :invitation_state, null: false, default: false

      t.references :user, foreign_key: true
      t.references :workspace, foreign_key: true

      t.timestamps
    end
  end
end
