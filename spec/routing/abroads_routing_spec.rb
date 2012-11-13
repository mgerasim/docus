require "spec_helper"

describe AbroadsController do
  describe "routing" do

    it "routes to #index" do
      get("/abroads").should route_to("abroads#index")
    end

    it "routes to #new" do
      get("/abroads/new").should route_to("abroads#new")
    end

    it "routes to #show" do
      get("/abroads/1").should route_to("abroads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/abroads/1/edit").should route_to("abroads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/abroads").should route_to("abroads#create")
    end

    it "routes to #update" do
      put("/abroads/1").should route_to("abroads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/abroads/1").should route_to("abroads#destroy", :id => "1")
    end

  end
end
