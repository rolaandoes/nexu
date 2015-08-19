class UsersController < ApplicationController
  
  # before_filter :authorize, only: [:show]

  def new
    if current_user
      redirect_to profile_path
    else
    @user = User.new
    render :new
    end
  end

  def create
    if current_user
      redirect_to profile_path
    else 
      user=User.new(user_params)
    if user.save 
      session[:user_id] = user.id
      redirect_to profile_path
    else
      redirect_to signup_path
    end
    end 
  end

  def show
    
    render :show
  end

  def edit
    user_id = current_user.id
    @user = User.find(user_id)
    render :edit
    
  end

  def update
    user_id = current_user.id
    @user = User.find(user_id)
    @user.update_attributes(user_params)
    redirect_to profile_path
  end



  # def new
  #   if current_user
  #     redirect_to profile_path
  #   else
  #     @user = User.new
  #     render :new
  #   end
  # end

  # def create
  #   user=User.create(user_params)      
  #   redirect_to profile_path
  # end

  # def edit
  #   # @user = User.find(session[:user_id])
  #   user_id = current_user.id
  #   @user = User.find(user_id)
  #   render :edit    
  # end

  # def update
  # 	# @user = User.find(session[:user_id])
  #  #  if current_user = @user
  #  #    form_params = params.require(:user).permit(:phone_number, :interest, :description)
  #  #    @user.update_attributes(form_params)
  #  #    redirect_to "users#show"
  #   # end
  #   user_id = current_user.id
  #   @user = User.find(user_id)
  #   @user.update_attributes(user_params)
  #   redirect_to profile_path
  # end

  # def show
  #   @user = User.find(session[:user_id])
  #   @description = @user.description
  #   render :show
  # end


  private
    def user_params
      params.require(:user).permit(:name, :phone_number, :interest, :description, :interest_id)
    end
end



