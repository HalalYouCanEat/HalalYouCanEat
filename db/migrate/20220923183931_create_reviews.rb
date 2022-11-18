class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :restaurant_id
      t.integer :halal_item_id
      t.integer :user_id
      t.date :date_of_review
      t.string :content
      t.integer :rating
			t.references :users, null: true, foreign_key: true # changed null from false to truet

      t.timestamps
    end
    add_index :reviews, [:user_id, :restaurant_id, :created_at]
  end
end
