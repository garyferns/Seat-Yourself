class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def show
  	@reservation = Reservation.find(params[:id])
  end

  def create
  	@reservation = @restaurant.reservation.build(reservation_params)
  	@reservation.user = current_user

  	if @reservation.save 
  		redirect_to restaurants_path, notice: 'Successful reservation!'
  	else 
  		render 'restaurants/show'
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
end

