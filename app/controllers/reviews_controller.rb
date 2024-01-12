class ReviewsController < ApplicationController
  # create the review controller for creating a new review according to the restaurant id and saving it.
  def create
    @restaurant = Restaurant.find(params[:restaurant_id]) #check why this is the param
    @review = Review.new(review_params)
    @review.restaurant = @restaurant #what does this do??
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
