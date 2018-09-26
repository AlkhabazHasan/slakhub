class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :country

      t.string :city
      t.string :duration
      t.string :meals
      t.boolean :transportation, null: false, default: true

      t.references :tour, foreign_key: true
      t.references :round, foreign_key: true
      t.references :user, foreign_key: true
      t.references :workspace, foreign_key: true

      t.timestamps
    end
  end
end
