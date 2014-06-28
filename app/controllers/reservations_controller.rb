class ReservationsController < ApplicationController

  def new
  	@reservation = Reservation.new
  	@restaurant = Restaurant.find(params[:restaurant_id])
  	@date_time = Time.now
  end

  def create
  end

  def update
  end

end
