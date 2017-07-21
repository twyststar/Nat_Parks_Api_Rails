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

end
