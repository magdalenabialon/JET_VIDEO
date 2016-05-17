require 'rails_helper'

RSpec.describe RoomsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #party" do
    it "returns http success" do
      get :party
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #config_opentok" do
    it "returns http success" do
      get :config_opentok
      expect(response).to have_http_status(:success)
    end
  end

end
