class UsersController < ApplicationController
  def new
    if current_user 
      redirect_to restaurants_path
    else 
  	 @user = User.new 
    end 
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to restaurants_path, notice: "Signed up!"
  	else 
  		render 'users/new'
  	end 
  end

  def show
   
  end 

  def edit
  end 

  def update
  end 

private
def user_params
	params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
end
end 
