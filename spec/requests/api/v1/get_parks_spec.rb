require 'rails_helper'


describe Api::V1::ParksController do
  # before(:each) { request.headers['Accept'] = "application/vnd.nat_parks.v1" }

  describe "get all parks route", :type => :request do
    let!(:parks) { FactoryGirl.create_list(:park, 22)}

    before { get '/api/v1/parks'}

    it 'returns all parks' do
      expect(JSON.parse(response.body).size).to eq(22)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end

  describe "return errors when request doesn't match requirements", :type => :request do
    it 'returns a not_found error when park doesnt exist' do
      quote = FactoryGirl.create(:park)
      get '/api/v1/parks/0'
      expect(response).to have_http_status(:not_found)
    end
  end

  describe "get a single park route", :type => :request do
    it 'returns a single park' do
      park = FactoryGirl.create(:park)
      get "/api/v1/parks/#{park.id}"
      expect(response).to be_success
      expect(JSON.parse(response.body)['name']).to eq(park.name)
    end
  end
end
