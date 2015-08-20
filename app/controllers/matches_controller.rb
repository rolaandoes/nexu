class MatchesController < ApplicationController

	def index
		@users = []
		all_users = User.all
		current_user = User.find(session[:user_id])
		all_users.each do |user|
			if user.interest_id == current_user.interest_id
				@users.push(user)
			end
		end
	end

	def connections
		# @users = []
		# all_users = User.all
		# current_user = User.find(session[:user_id])
		# all_users.each do |user|
		# 	if user.interest_id == current_user.interest_id
		# 		@users.push(user)
		# 	end
		# end
		# cnx = []
		

		# :render index
		# #flash = we're texting you
	end


  def show
  	# @users = User.find(current_user.interest_id)
  end

  def edit
  end

  def update
  	
  end
end
