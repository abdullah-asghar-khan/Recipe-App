# require 'rails_helper'

# RSpec.describe 'Foods', type: :request do
#   @user = User.create!(name: 'john', email: 'test@abc.com', password: '12345678', password_confirmation: '12345678')
#   #@user.sign_in_count = 1
#   @user.save

#   context 'GET /index' do
#     before(:all) do
#       get '/foods'
#     end

#     it 'returns http success' do
#       expect(response).to have_http_status(:ok)
#     end

#     it 'Correct template was rendered.' do
#       expect(response).to render_template(:index)
#     end
#   end

#   context 'GET /new' do
#     before(:all) do
#       get '/foods/new'
#     end

#     it 'returns http success' do
#       expect(response).to have_http_status(:ok)
#     end

#     it 'Correct template was rendered.' do
#       expect(response).to render_template(:new)
#     end
#   end
# end

require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  include Devise::Test::IntegrationHelpers

  let(:user) { User.create(name: 'Kolly', email: 'kolly@mail.com', password: 'password') }
  let(:food) { user.foods.create(name: 'apple', measurementUnit: 'kg', price: 4) }

  describe 'GET /index' do
    before do
      #sign_in user
      get foods_path
    end

    it 'response to html' do
      expect(response.content_type).to include 'text/html'
    end
  end

  describe 'GET /new' do
    before do
      sign_in user
      get new_food_path
    end

    it 'response to html' do
      expect(response.content_type).to include 'text/html'
    end
  end
end
