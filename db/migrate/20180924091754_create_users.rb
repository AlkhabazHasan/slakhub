class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :confirm_code
      t.string :confirm_state
      t.string :first_name
      t.string :last_name
      t.string :avatar
      t.string :email
      t.string :phone
      t.string :auth
      t.string :role

      t.references :workspace, foreign_key: true

      t.timestamps
    end
  end
end
