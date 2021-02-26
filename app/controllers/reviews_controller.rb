class ReviewsController < ApplicationController
  def create
    @review = Review.new(strong_params)
    @restaurant = Restaurant.find(params[:restaurant_id]) # /restaurants/:restaurant_id/reviews
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant, anchor: "reviews")
    else
      render 'restaurants/show'
    end
  end

  private

  def strong_params
    params.require(:review)
          .permit(:content)
  end
end
