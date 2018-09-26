class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.references :workspace, foreign_key: true
      t.references :user, foreign_key: true

      t.references :round, foreign_key: true
      t.references :tour, foreign_key: true
      t.references :destination, foreign_key: true

      t.references :flight, foreign_key: true

      t.references :hotel, foreign_key: true
      t.references :room, foreign_key: true

      t.references :traveller, foreign_key: true

      t.boolean :visa, null: false, default: false

      t.timestamps
    end
  end
end
