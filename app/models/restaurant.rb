class Restaurant < ActiveRecord::Base
  # has_secure_password

  has_and_belongs_to_many :categories
  has_many :reservations
  has_many :reviews
  belongs_to :owner, :class_name => "Customer"

 def average_rating
    ratings_array = []
    reviews.each { |review| ratings_array << review.rating }
    if ratings_array.empty?
      "This restauarant has not yet been reviewed!"
    else
      ratings_array.inject(0) {|sum, num| sum + num} / ratings_array.count
    end
  end
end
