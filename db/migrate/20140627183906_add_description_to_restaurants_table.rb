class AddDescriptionToRestaurantsTable < ActiveRecord::Migration
  def change
    add_column :restaurants, :description, :text_area
  end
end
