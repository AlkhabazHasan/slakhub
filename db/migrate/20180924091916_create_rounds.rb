class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.decimal :total

      t.string :country_1
      t.string :country_2
      t.string :country_3
      t.string :country_4
      t.string :country_5
      t.string :country_6
      t.string :country_7
      t.string :country_8

      t.float :price, null: false

      t.references :user, foreign_key: true
      t.references :workspace, foreign_key: true

      t.timestamps
    end
  end
end
