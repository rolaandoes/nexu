require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

	describe 'user signout' do
		before do
			get :destroy
		end
		# it 'should start a session' do
		# 	expect(response.status).to be(200)
		# end
		it 'redirects to homepage' do 
			expect(response).to redirect_to('/')
		end
		it 'clears the user session' do
			expect(session[:user_id]).to eq(nil)
		end
	end
end
