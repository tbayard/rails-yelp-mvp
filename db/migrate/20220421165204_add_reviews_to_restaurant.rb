class AddReviewsToRestaurant < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :reviews, :string
  end
end
