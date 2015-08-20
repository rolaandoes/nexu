class MatchesController < ApplicationController

	def index
		@users = []
		all_users = User.all - [current_user]
		current_user = User.find(session[:user_id])
		all_users.each do |user|
			if user.interest_id == current_user.interest_id
				@users.push(user)
			end
		end
	end

def connection
    
    #move this into SERVICE
    #app/service/logic.rb
    current_user = User.find(session[:user_id])
    cu_lat = current_user.latitude
    cu_lng = current_user.longitude
    cu_coord = [cu_lat,cu_lng]

    int_match = []
    all_users = User.all - [current_user]
    all_users.each do |user|
    	if user.interest_id == current_user.interest_id
    		int_match.push(user)
    	end
    end


    
	def distance loc1, loc2
	  rad_per_deg = Math::PI/180  # PI / 180
	  rkm = 6371                  # Earth radius in kilometers
	  rm = rkm * 1000             # Radius in meters

	  dlat_rad = (loc2[0]-loc1[0]) * rad_per_deg  # Delta, converted to rad
	  dlon_rad = (loc2[1]-loc1[1]) * rad_per_deg

	  lat1_rad, lon1_rad = loc1.map {|i| i * rad_per_deg }
	  lat2_rad, lon2_rad = loc2.map {|i| i * rad_per_deg }

	  a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
	  c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))

	  rm * c # Delta in meters
	end
	
	cnx = []
	threshold = 4800 #meters (3 miles)
	int_match.each do |connect| #?

		match_lat = connect.latitude
		match_lng = connect.longitude
		match_coord = [match_lat,match_lng]

	    if distance(cu_coord,match_coord) < threshold
	        cnx.push(connect)
	        #send SMS
	    else
	    	print 'too far'
	    end
	end
	p cnx
	#cnx.text
	redirect_to '/profile'
	
end



  def show
  	@user = User.find(current_user[:interest_id])
  end

  def edit
  end

  def update
  	
  end
end
