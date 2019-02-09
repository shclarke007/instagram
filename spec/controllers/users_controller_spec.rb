require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET /index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    
    it 'creates a user' do
      post :create, params: { user: { :email => "socks@email.com", :password => "Bananas", :password_confimration => "Bananas" } }
      expect(response).to redirect_to posts_url
      expect(User.find_by(:email => "socks@email.com")).to be
    end
  end

end
