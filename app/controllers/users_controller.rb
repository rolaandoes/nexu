class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  	
  end

  def edit
  end

  def update
  	
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:phone_number, :description)
  end
end
