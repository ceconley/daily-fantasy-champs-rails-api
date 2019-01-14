require "rails_helper"

RSpec.describe SlatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/slates").to route_to("slates#index")
    end


    it "routes to #show" do
      expect(:get => "/slates/1").to route_to("slates#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/slates").to route_to("slates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/slates/1").to route_to("slates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/slates/1").to route_to("slates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/slates/1").to route_to("slates#destroy", :id => "1")
    end

  end
end
