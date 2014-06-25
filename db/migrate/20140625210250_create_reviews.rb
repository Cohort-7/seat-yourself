class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :comment
      t.integer :rating
      t.belongs_to :customer
      t.belongs_to :restaraunt

      t.timestamps
    end
  end
end
