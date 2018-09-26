class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :country, null: false
      t.boolean :visa, null: false, default: true

      t.references :round, foreign_key: true
      t.references :user, foreign_key: true
      t.references :workspace, foreign_key: true

      t.timestamps
    end
  end
end
