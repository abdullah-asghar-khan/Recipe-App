require 'rails_helper'

RSpec.describe '/recipes', type: :request do
  context 'GET /index' do
    before(:each) do
      get '/recipes'
    end

    it 'Correct template was rendered.' do
      expect(response).to render_template(:index)
    end

    it 'Response status was correct.' do
      expect(response).to have_http_status(:ok)
    end
  end

  # describe 'GET /show' do
  #   it 'renders a successful response' do
  #     recipe = Recipe.create! valid_attributes
  #     get recipe_url(recipe)
  #     expect(response).to be_successful
  #   end
  # end

  # context 'Show' do
  #   before(:each) do
  #     get '/recipes/1'
  #   end
  #   it 'Correct template was rendered.' do
  #     expect(response).to render_template(:show)
  #   end
  #   it 'Response status was correct.' do
  #     expect(response).to have_http_status(:ok)
  #   end
  # end

  # describe 'GET /new' do
  #   it 'renders a successful response' do
  #     get new_recipe_url
  #     expect(response).to be_successful
  #   end
  # end

  # describe 'POST /create' do
  #   context 'with valid parameters' do
  #     it 'creates a new Recipe' do
  #       expect do
  #         post recipes_url, params: { recipe: valid_attributes }
  #       end.to change(Recipe, :count).by(1)
  #     end

  #     it 'redirects to the created recipe' do
  #       post recipes_url, params: { recipe: valid_attributes }
  #       expect(response).to redirect_to(recipe_url(Recipe.last))
  #     end
  #   end

  #   context 'with invalid parameters' do
  #     it 'does not create a new Recipe' do
  #       expect do
  #         post recipes_url, params: { recipe: invalid_attributes }
  #       end.to change(Recipe, :count).by(0)
  #     end

  #     it "renders a successful response (i.e. to display the 'new' template)" do
  #       post recipes_url, params: { recipe: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  # describe 'DELETE /destroy' do
  #   before(:each) do
  #     recipe = Recipe.create! valid_attributes
  #   end

  #   it 'destroys the requested recipe' do
  #     expect do
  #       delete recipe_url(recipe)
  #     end.to change(Recipe, :count).by(-1)
  #   end

  #   it 'redirects to the recipes list' do
  #     delete recipe_url(recipe)
  #     expect(response).to redirect_to(recipes_url)
  #   end
  # end
end
