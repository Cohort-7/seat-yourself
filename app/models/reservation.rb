class Reservation < ActiveRecord::Base
	belongs_to :customer
	belongs_to :restaurant

  validates :reservation_availabiliy

  def reservation_availability
    restuarant.reservations.each do |current_reservation|
      if reservation.time == current_reservation.time
        errors.add(reservation: "time is not available...")
      end
    end
  end
end
