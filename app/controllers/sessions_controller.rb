class SessionsController < ApplicationController
  
  def new 
    if current_user
      redirect_to profile_path
    else
      render :new
    end
  end

  def create
      # user = User.from_omniauth(env["omniauth.auth"])
      # session[:user_id] = user.id
      # if current_user
      
       user=User.find_by_name(user_params[:name])
       session[:user_id] = user.id
       redirect_to profile_path
      # end
  end




        # if user && user.authenticate(user_params[:password])
        #  session[:user_id]=user.id
        #  redirect_to profile_path
        # else
        #   flash[:error] = "Failed To Authenticate. Please try again."
        #   redirect_to login_path
        # end
    # end
    # redirect_to root_url
    # if user has phone #
    # if user.phone
    # redirect_to '/profile'
    # else
    # if user.phone_number
    #   redirect_to '/users/:user_id'
    # else
    #   redirect_to '/users/new'
    # end
  

  def new
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  private
    def user_params
      params.require(:user).permit(:name)
    end
end