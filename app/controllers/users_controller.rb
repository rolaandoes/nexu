class UsersController < ApplicationController
  
  # before_filter :authorize, only: [:show]

  def new
    @user = User.new
  end

  def create
  end

  def edit
    # @user = User.find(session[:user_id])
  end

  def update
  	# @user = User.find(session[:user_id])
   #  if current_user = @user
   #    form_params = params.require(:user).permit(:phone_number, :interest, :description)
   #    @user.update_attributes(form_params)
   #    redirect_to "users#show"
    # end
  end

  def show
    @user = User.find(session[:user_id])
    @description = @user.description
    render :show
  end


  private
    def user_params
      params.require(:user).permit(:phone_number, :interest, :description)
    end
end



