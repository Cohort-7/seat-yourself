class Review < ActiveRecord::Base
	belongs_to :customer
	belongs_to :restaurant

  validate :title, presence: true, :length => { maximum: 25 }
  validate :comment, presence: true, :length => { maximum: 250}
  validate :rating, presence: true
end
