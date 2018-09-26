class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.decimal :floor
      t.decimal :room
      t.decimal :bed

      t.references :destination, foreign_key: true
      t.references :hotel, foreign_key: true
      t.references :workspace, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
