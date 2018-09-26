class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :board

      t.string :from_country
      t.string :from_city

      t.integer :seats
      t.integer :vacancies

      t.string :airline
      t.datetime :departure
      t.datetime :arrival

      t.boolean :transit, null: false, default: false
      t.datetime :duration

      t.string :airline
      t.datetime :departure
      t.datetime :arrival

      t.string :to_country
      t.string :to_city

      t.references :destination, foreign_key: true
      t.references :tour, foreign_key: true
      t.references :round, foreign_key: true
      t.references :user, foreign_key: true
      t.references :workspace, foreign_key: true

      t.timestamps
    end
  end
end
