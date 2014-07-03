class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.customer_id = current_customer.id
    @review.restaurant_id = params[:restaurant_id]

    if @review.save
      redirect_to restaurant_path(params[:restaurant_id]), :notice => "Thanks for the review!"
    else
      render restaurant_path(params[:restaurant_id])
      flash.now[:alert] = "Your review was not submitted..."
    end
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:title, :comment, :rating, :restaurant_id)
  end
end
