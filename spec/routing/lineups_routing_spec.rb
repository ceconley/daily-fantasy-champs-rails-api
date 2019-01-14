require "rails_helper"

RSpec.describe LineupsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lineups").to route_to("lineups#index")
    end


    it "routes to #show" do
      expect(:get => "/lineups/1").to route_to("lineups#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/lineups").to route_to("lineups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lineups/1").to route_to("lineups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lineups/1").to route_to("lineups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lineups/1").to route_to("lineups#destroy", :id => "1")
    end

  end
end
