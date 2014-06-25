class Restaurant < ActiveRecord::Base
  has_many_and_belongs_to :categories
  has_many :reservations
  has_many :reviews
end
