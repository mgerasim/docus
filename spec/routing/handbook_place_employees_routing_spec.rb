require "spec_helper"

describe HandbookPlaceEmployeesController do
  describe "routing" do

    it "routes to #index" do
      get("/handbook_place_employees").should route_to("handbook_place_employees#index")
    end

    it "routes to #new" do
      get("/handbook_place_employees/new").should route_to("handbook_place_employees#new")
    end

    it "routes to #show" do
      get("/handbook_place_employees/1").should route_to("handbook_place_employees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/handbook_place_employees/1/edit").should route_to("handbook_place_employees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/handbook_place_employees").should route_to("handbook_place_employees#create")
    end

    it "routes to #update" do
      put("/handbook_place_employees/1").should route_to("handbook_place_employees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/handbook_place_employees/1").should route_to("handbook_place_employees#destroy", :id => "1")
    end

  end
end
