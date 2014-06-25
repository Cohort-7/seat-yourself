class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :time
      t.integer :people
      t.string :status
      t.belongs_to :customer
      t.belongs_to :restaraunt

      t.timestamps
    end
  end
end
