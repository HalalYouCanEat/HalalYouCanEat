class HopefullyFixForeignKeys < ActiveRecord::Migration[7.0]
  def change
    # Removing the foreign keys that are backwards to the way they should be
    remove_foreign_key :restaurants, :reviews, column: :reviews_id
    remove_foreign_key :restaurants, :halal_items, column: :halal_items_id

    # Removing foreign key "users_id" since we already have "user_id", which better reflects one user per review
    remove_foreign_key :reviews, :users, column: :users_id
    remove_columns :reviews, :users_id

    # Removing "user_id", "restaurant_id", and "halal_item_id" as integer columns and adding them back as bigint columns
    remove_columns :reviews, :user_id, :restaurant_id, :halal_item_id
    add_column :reviews, :user_id, :bigint
    add_column :reviews, :restaurant_id, :bigint
    add_column :reviews, :halal_item_id, :bigint

    # Removing "restaurant_id" as an integer column and adding it back as a bigint column
    remove_column :halal_items, :restaurant_id
    add_column :halal_items, :restaurant_id, :bigint

    # Removing these from Restaurants because they are redundant and better practice would be to do a join:
    # JOIN reviews ON reviews.restaurant_id = restaurants.id
    # JOIN halal_items ON halal_items.restaurant_id = restaurants.id
    remove_columns :restaurants, :halal_items_id, :reviews_id

    # Adding the foreign key so the variable halal_items.restaurant_id points to restaurants.id
    # If the associated restaurant is deleted, so too are all of the halal_items whose restaurant_id matches
    add_foreign_key :halal_items, :restaurants, column: :restaurant_id, primary_key: :id, on_delete: :cascade

    # Adding the foreign key so that the variable reviews.restaurant_id points to restaurants.id
    # Upon deleting a restaurant, it should delete all reviews associated with that restaurant
    add_foreign_key :reviews, :restaurants, column: :restaurant_id, primary_key: :id, on_delete: :cascade

    # Adding the foreign key so that the variable reviews.user_id points to users.id
    # Upon deleting a user, it should delete all reviews associated with that user
    add_foreign_key :reviews, :users, column: :user_id, primary_key: :id, on_delete: :cascade

    # Adding the foreign key so that the variable reviews.halal_item_id points to halal_items.id
    # Upon deleting a halal_item, it should set all reviews.halal_item_id associated with that halal_item to null
    add_foreign_key :reviews, :halal_items, column: :halal_item_id, primary_key: :id, on_delete: :nullify

    # Adding the reviews index back in. I believe it makes the most sense to index on restaurant_id and created_at...
    add_index :reviews, [:restaurant_id, :created_at]

    # Adding indexing on restaurant_id in the HalalItems table
    add_index :halal_items, :restaurant_id


  end
end
