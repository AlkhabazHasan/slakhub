class CreateTravellers < ActiveRecord::Migration[5.2]
  def change
    create_table :travellers do |t|
      t.string :first_name
      t.string :last_name

      t.string :passport
      t.string :cpr

      t.string :phone
      t.string :mobile
      t.string :email

      t.text :address

      t.datetime :last_trip
      t.datetime :next_trip

      t.references :workspace, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
