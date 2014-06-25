class Restaurant < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_many :reservations
  has_many :reviews
end
