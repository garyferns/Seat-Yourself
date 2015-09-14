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
    @restaurant.owner_id = current_user.id
  	if @restaurant.save
  		redirect_to restaurants_path
  	else
  		render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end


  private
  def restaurant_params
  	params.require(:restaurant).permit(:name, :image, :address, :neighbourhood, :price_range, :summary, :open_time, :close_time, :capacity)
  end


end
