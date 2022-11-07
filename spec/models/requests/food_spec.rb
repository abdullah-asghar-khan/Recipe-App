require 'rails_helper'

RSpec.describe "Foods", type: :request do
  describe "GET /Index" do
    it "returns http success" do
      get "/food/Index"
      expect(response).to have_http_status(:success)
    end
  end

end
