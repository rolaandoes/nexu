require 'rails_helper'

RSpec.describe PagesController, type: :controller do

	describe "front page" do
		before do
			get :index
		end
		it 'should just go to the front page' do
			expect(response.status).to be(200)
		end
	end

end
