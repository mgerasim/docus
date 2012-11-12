require "spec_helper"

describe HandbookStructualUnitsController do
  describe "routing" do

    it "routes to #index" do
      get("/handbook_structual_units").should route_to("handbook_structual_units#index")
    end

    it "routes to #new" do
      get("/handbook_structual_units/new").should route_to("handbook_structual_units#new")
    end

    it "routes to #show" do
      get("/handbook_structual_units/1").should route_to("handbook_structual_units#show", :id => "1")
    end

    it "routes to #edit" do
      get("/handbook_structual_units/1/edit").should route_to("handbook_structual_units#edit", :id => "1")
    end

    it "routes to #create" do
      post("/handbook_structual_units").should route_to("handbook_structual_units#create")
    end

    it "routes to #update" do
      put("/handbook_structual_units/1").should route_to("handbook_structual_units#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/handbook_structual_units/1").should route_to("handbook_structual_units#destroy", :id => "1")
    end

  end
end
