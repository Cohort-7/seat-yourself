class RemoveEmailAndPasswordFromRestaurant < ActiveRecord::Migration
  def change
    remove_column :restaurants, :email, :string
    remove_column :restaurants, :password_digest, :string
  end
end
