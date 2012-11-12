require "spec_helper"

describe HandbookDivisionsController do
  describe "routing" do

    it "routes to #index" do
      get("/handbook_divisions").should route_to("handbook_divisions#index")
    end

    it "routes to #new" do
      get("/handbook_divisions/new").should route_to("handbook_divisions#new")
    end

    it "routes to #show" do
      get("/handbook_divisions/1").should route_to("handbook_divisions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/handbook_divisions/1/edit").should route_to("handbook_divisions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/handbook_divisions").should route_to("handbook_divisions#create")
    end

    it "routes to #update" do
      put("/handbook_divisions/1").should route_to("handbook_divisions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/handbook_divisions/1").should route_to("handbook_divisions#destroy", :id => "1")
    end

  end
end
