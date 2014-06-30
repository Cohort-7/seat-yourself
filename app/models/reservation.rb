class Reservation < ActiveRecord::Base
	belongs_to :customer
	belongs_to :restaurant

  validate :reservation_availability

  def reservation_availability
    restaurant.reservations.each do |current_reservation|
      if time == current_reservation.time && restaurant.capacity < hourly_capacity(restaurant) + people
        puts "WORKED"
        errors.add(:reservation, "time is not available...")
      end
    end
  end

  def hourly_capacity(restaurant)
    capacity = []
    reservervations = restaurant
    restaurant.reviews.each {|review| capacity << review.people }
    capacity.inject(0) {|sum, num| sum + num}
    end
  end
end
