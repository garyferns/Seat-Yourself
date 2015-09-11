class RestaurantsController < ApplicationController
  def index
  @restaurants = Restaurant.all 
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
  end

  def new
  	@restaurant = Restaurant.new
  end

  def create 
  	@restaurant = Restaurant.new(restaurant_params)

  	if @restuarant.save
  		redirect_to restaurants_path 
  	else 
  		render :new
  end 

  private
  def restaurant_params 
  	params.require(:restuarant).permit(:address, :neighbourhood, :price_range, :summary, :open_time, :close_time, :capacity)
  end 


end
