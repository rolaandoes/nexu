class MatchesController < ApplicationController
  
	def index
		@users = User.all
	end

  def show
  	@users = User.find(current_user.interest_id)
  end

  def edit
  end

  def update
  	
  end
end
