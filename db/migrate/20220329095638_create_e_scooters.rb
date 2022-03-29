class CreateEScooters < ActiveRecord::Migration[6.1]
  def change
    create_table :e_scooters do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :street_name
      t.date :disponibility_start
      t.date :disponibility_end
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
