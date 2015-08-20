class Location < ActiveRecord::Base

	#validations
	validates :latitude, :longitude,
	prsence: true
end
