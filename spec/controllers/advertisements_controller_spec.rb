require 'rails_helper'
include RandomData

Rspec.describe AdvertisementsController, type: :controller do
  let (:my_ad) do
    Advertisement.create(
      id: 1,
      title:  RandomData.random.sentence,
      copy:   RandomData.random_paragraph,
      price:  99
    )
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
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

end
