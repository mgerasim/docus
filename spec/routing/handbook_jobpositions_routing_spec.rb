require "spec_helper"

describe HandbookJobpositionsController do
  describe "routing" do

    it "routes to #index" do
      get("/handbook_jobpositions").should route_to("handbook_jobpositions#index")
    end

    it "routes to #new" do
      get("/handbook_jobpositions/new").should route_to("handbook_jobpositions#new")
    end

    it "routes to #show" do
      get("/handbook_jobpositions/1").should route_to("handbook_jobpositions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/handbook_jobpositions/1/edit").should route_to("handbook_jobpositions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/handbook_jobpositions").should route_to("handbook_jobpositions#create")
    end

    it "routes to #update" do
      put("/handbook_jobpositions/1").should route_to("handbook_jobpositions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/handbook_jobpositions/1").should route_to("handbook_jobpositions#destroy", :id => "1")
    end

  end
end
