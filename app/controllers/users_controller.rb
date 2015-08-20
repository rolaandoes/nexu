class UsersController < ApplicationController
  
  # before_filter :authorize, only: [:show]


  def new
    # @user = User.new
    @user = User.find(session[:user_id])
  end

  def create
    redirect_to '/profile'
  end

  def edit
    @user = User.find(session[:user_id])
    # p @user
  end

  def update
    @user = User.find(session[:user_id])
    p @user
    @user.update_attributes(user_params)
    render :edit
  end
  # - - - - - - - - - - - - - - - - - - 

  def show
    @user = User.find(session[:user_id])
    @description = @user.description
    @user_image = @user.image
    render :show
  end

#==========================
  private
    def user_params
      params.require(:user).permit(:latitude, :longitude, :interest_id, :interest, :image, :phone_number, :description)
    end



end
