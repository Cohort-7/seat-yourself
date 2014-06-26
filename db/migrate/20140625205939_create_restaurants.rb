class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.datetime :open_time
      t.datetime :close_time
      t.string :menu_link
      t.string :email
      t.string :password_digest
      t.integer :capacity

      t.timestamps
    end
  end
end
