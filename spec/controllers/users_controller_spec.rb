require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET /new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    it 'instant of a user' do
      user = User.new
      expect(user).to be
    end
  end

  describe "POST /create" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  
  end
end
