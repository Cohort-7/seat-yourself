class ReservationsController < ApplicationController

  def new
  	@reservation = Reservation.new
  	@restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @reservation = Reservation.new(parse_new_time_object(reservation_params))
    @reservation.restaurant_id = @restaurant.id
    # @reservation.customer_id = current_customer.id

    if @reservation.save
      redirect_to restaurants_path  , notice: "Your reservation was created!"
    else
      render @restaurant
      flash.now[:alert] = "Your table was not reserved..."
    end
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
      people: params[:people] }
    new_params
  end
end


