module ApplicationHelper
  def average_rating(restaurant)
    ratings_array
    restaurant.reviews.each { |review| ratings_array << review.rating }
    if ratings_array.empty?
      "This restauarant has not yet been reviewed!"
    else
      ratings_array.inject(0) {|sum, num| sum + num} / ratings_array.count
    end
  end
end
