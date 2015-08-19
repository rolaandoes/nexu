class MatchesController < ApplicationController
  def index
  	@users = User.all
  end

	def show
		@users = User.find(current_user.interest_id)
    # @match = User.find(params[:id])
    # render :show
  
  end

  def edit
  end

  def update
  	
  end
end
