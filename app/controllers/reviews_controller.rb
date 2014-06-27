class ReviewsController < ApplicationController

  def create
    @review = Restaurant.reviews.build(review_params)
    #@review.user_id = current_user.id

    if @review.save
      redirect_to @Restaurant, :notice => "Thanks for the review!"
    else
      render :restaurant
      flash.now[:alert] = "Your review was not submitted..."
    end
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:title, :comment, :rating)
  end
end
