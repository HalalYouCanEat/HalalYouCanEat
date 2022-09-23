class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.integer :location_id
      t.string :name

      t.timestamps
    end
  end
end
