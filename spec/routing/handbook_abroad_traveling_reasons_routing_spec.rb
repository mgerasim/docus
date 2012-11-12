require "spec_helper"

describe HandbookAbroadTravelingReasonsController do
  describe "routing" do

    it "routes to #index" do
      get("/handbook_abroad_traveling_reasons").should route_to("handbook_abroad_traveling_reasons#index")
    end

    it "routes to #new" do
      get("/handbook_abroad_traveling_reasons/new").should route_to("handbook_abroad_traveling_reasons#new")
    end

    it "routes to #show" do
      get("/handbook_abroad_traveling_reasons/1").should route_to("handbook_abroad_traveling_reasons#show", :id => "1")
    end

    it "routes to #edit" do
      get("/handbook_abroad_traveling_reasons/1/edit").should route_to("handbook_abroad_traveling_reasons#edit", :id => "1")
    end

    it "routes to #create" do
      post("/handbook_abroad_traveling_reasons").should route_to("handbook_abroad_traveling_reasons#create")
    end

    it "routes to #update" do
      put("/handbook_abroad_traveling_reasons/1").should route_to("handbook_abroad_traveling_reasons#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/handbook_abroad_traveling_reasons/1").should route_to("handbook_abroad_traveling_reasons#destroy", :id => "1")
    end

  end
end
