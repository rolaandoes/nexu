#will write a test to make sure user is saved to db 
require 'rails-helper'
RSpec.describe User, type: :model do

before do
	user_params[:provider] = facebook::auth.provider
	user_params[:uid] = "108105449542197"::auth.uid
	user_params[:name] = "Nexu Rod"::auth.info.name
	user_params[:oauth_token] = "CAALdawihdBoBAPwZAr2A1whcKSfLtL84LLUsxZA9SIOMPOcz3..."::auth.credentials.token
	user.save 

	describe "#provider" do
		it "lets us know who provides login"
		expect(@provider).to eq("#@provider")
	end
	end
end