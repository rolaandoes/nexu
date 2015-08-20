require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

	describe 'user signup' do
		before do
			get :create
		end
		it 'should have a sign up page' do
			expect(response.status).to be(200)
		end
		it 'should just go to the sign up page' do 
			expect(response).to render('pages#index')
		end
	end
end
