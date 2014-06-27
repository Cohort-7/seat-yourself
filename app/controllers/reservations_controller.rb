class ReservationsController < ApplicationController

  def new
  	@reservation = Reservation.new
  	@restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
  end

  def update
  end

end
