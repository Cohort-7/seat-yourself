class RemoveEmailAndPasswordFromRestaurant < ActiveRecord::Migration
  def change
    remove_column :restaurants, :email
    remove_column :restaurants, :password_digest
  end
end
