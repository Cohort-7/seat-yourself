class Reservation < ActiveRecord::Base
  belongs_to :customer
  belongs_to :restaurant

  validate :reservation_availability

  def reservation_availability
    if restaurant.capacity < hourly_capacity(time, restaurant_id) + people
      errors.add(:reservation, "time is not available...")
    end
  end

  def hourly_capacity(time, restaurant_id)
    people = []
    reservations = Reservation.where("time = ? AND restaurant_id = ?", time, restaurant_id)
    reservations.each {|reservation| people << reservation.people }
    people.inject(0) {|sum, num| sum + num }
  end
end
