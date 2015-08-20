class UsersController < ApplicationController
  
  # before_filter :authorize, only: [:show]


  def new
    @user = User.new
  end

  def create
    redirect_to '/profile'
  end

  def edit
    @user = User.find(session[:user_id])
    # p @user
  end



  def update
    # byebug
    # @user.update_attributes(user_params)
    # user_id = current_user.id
    # @user = User.find(user_id)
    @user = User.find(session[:user_id])
    @user.update_attributes(user_params)
    # redirect_to profile_path
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
      params.require(:user).permit(:latitude, :longitude, :interest_id, :interest, :image)
    end



end

#====================================
  # def update
  #   post_id = params[:id]
  #   post = Post.friendly.find(post_id)
  #   updated_attributes = post_params

  #   if post.update_attributes(updated_attributes)
  #     #updated attr...
  #       redirect_to post_path
  #   end
  # end

  # def update
  #   # @user = User.find(session[:user_id])
  #   # skip_before_action :verify_authenticity_token
  #   # user_id = current_user.id
  #   # @user = User.find(user_id)
  #   # @user.update_attributes(user_params)

  #   # puts @user.latitude
  #   @user.update_attributes(user_params)
  # end

  # def location
  #   @lat
  #   @lon

  # end

  # puts update.updated_attributes

  # Users Table Migration => add colomns : latitude, longitude

  # Need to get Scripts.js talking with Users_controller (Here)
# -----------
  # Button: Send My Location 
    #Send latitude and longitude to User Table in DB

  # Button: Am I Close to Anyone?
    #Runs Distance Function
      #in which File?





