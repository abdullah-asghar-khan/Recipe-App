require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  @user = User.create!(name: 'john', email: 'test@gmail.com', password: '12345678', password_confirmation: '12345678')
  @user.sign_in_count = 1
  @user.save

  context 'GET /index' do
    before(:each) do
      get '/foods'
    end

    it 'returns http success' do
      expect(response).to have_http_status(:ok)
    end

    it 'Correct template was rendered.' do
      expect(response).to render_template(:index)
    end
  end

  context 'GET /new' do
    before(:each) do
      get '/foods/new'
    end

    it 'returns http success' do
      expect(response).to have_http_status(:ok)
    end

    it 'Correct template was rendered.' do
      expect(response).to render_template(:new)
    end
  end
end
