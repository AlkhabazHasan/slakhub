class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name

      t.string :country
      t.string :city
      t.text :address

      t.string :phone
      t.string :email

      t.integer :floor

      t.references :destination, foreign_key: true
      t.references :user, foreign_key: true
      t.references :workspace, foreign_key: true

      t.timestamps
    end
  end
end
