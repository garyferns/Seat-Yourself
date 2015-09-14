class ReservationsController < ApplicationController

before_filter :load_restaurant

  def new
    @reservation = Reservation.new
  end

  def show
  	@reservation = Reservation.find(params[:id])
  end

  def create
  	@reservation = @restaurant.reservations.build(reservation_params)
  	@reservation.user = current_user

  	if @reservation.save 
  		redirect_to profile_path, :notice => "Successful Reservation!"  

  	else 
  		render 'reservations/new' 
  	end 

  end

  def destroy
  	@reservation = Reservation.find(params[:id])
  	@reservation.destroy
  	redirect_to restaurants_path
  end

  def index
  	@reservatons = Reservation.all
  end

  private

  def reservation_params
    params.require(:reservation).permit(:dinner_time, :party_size, :restaurant_id)
  end

   def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end



end

