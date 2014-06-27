class Reservation < ActiveRecord::Base
	belongs_to :customer
	belongs_to :restaurant

  # validates :reservation_time_not_past

  def reservation_time_not_past
    if time < Time.now
      error.add(:time, "cannot be in the past!")
    end
  end
end
