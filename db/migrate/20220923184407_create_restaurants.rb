class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      # t.integer :location_id
      t.string :name
			t.string :cuisine
			t.string :state
      t.integer :zipcode
      t.string :address
      t.string :city
      t.float :latitude
      t.float :longitude
			t.string :url
			t.string :rating
			t.boolean :approved
			t.float :distance_from_user
			t.references :reviews, null: true, foreign_key: true # changed null from false to true
			t.references :halal_items, null: true, foreign_key: true # changed null from false to true

      t.timestamps
    end
  end
end
