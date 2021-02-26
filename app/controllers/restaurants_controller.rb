class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # it can respond with HTML (default) OR JSON
    respond_to do |format_request|
      format_request.html { render :index } #:index.html.erb
      format_request.json { render json: { restaurants: @restaurants } }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new #create an empty review for the form
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end
end
