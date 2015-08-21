class SessionsController < ApplicationController
  
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id

    # redirect_to root_url
    # if user has phone #
    # if user.phone
    # redirect_to '/profile'
    # else
    if user.phone_number
      redirect_to '/users/:user_id'
    else
      redirect_to '/users/new'
    end

  end

  # def new
  # end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
  
end