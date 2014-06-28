class ReservationsController < ApplicationController

  def new
  	@reservation = Reservation.new
  	@restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @reservation = Reservation.new()
  end

  def update
  end

  private

  def reservation_params
    params.require(:reservation).permit(:time, "time(4i)", :people)
  end

  def parse_new_time_object(params)
    new_params = {
      time: Time.new(
      params[:time][0..3].to_i,
      params[:time][5..6].to_i,
      params[:time][8..9].to_i,
      params["time(4i)"].to_i
      ),
      params[:people]
    }
  end
end


