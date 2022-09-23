class CreateHalalItems < ActiveRecord::Migration[7.0]
  def change
    create_table :halal_items do |t|
      t.string :name
      t.integer :restaurant_id
      t.string :description
      t.string :verification
      t.boolean :vegan
      t.boolean :gluten_free
      t.boolean :vegetarian

      t.timestamps
    end
  end
end
