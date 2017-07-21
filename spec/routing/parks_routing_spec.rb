require "rails_helper"

RSpec.describe ParksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/parks").to route_to("parks#index")
    end


    it "routes to #show" do
      expect(:get => "/parks/1").to route_to("parks#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/parks").to route_to("parks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/parks/1").to route_to("parks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/parks/1").to route_to("parks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/parks/1").to route_to("parks#destroy", :id => "1")
    end

  end
end
