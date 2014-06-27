class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_path, notice: "Your restaurant was created successfully!"
    else
      render :new
      flash.now[:alert] = "Your restaurant was not created!"
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
    @reservation = Reservation.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :email, :password, :password_confirmation, :open_time, :close_time, :menu_link, :phone_number, :address, :category_ids => [])
  end
end
