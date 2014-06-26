class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new

    if @restaurant.save
      redirect_to restaurants_path, notice: "Your restaurant was created successfully!"
    else
      render :new
      flash.now[:alert] = "Your restaurant was not created!"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
