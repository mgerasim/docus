require "spec_helper"

describe HandbookFormAdmissionsController do
  describe "routing" do

    it "routes to #index" do
      get("/handbook_form_admissions").should route_to("handbook_form_admissions#index")
    end

    it "routes to #new" do
      get("/handbook_form_admissions/new").should route_to("handbook_form_admissions#new")
    end

    it "routes to #show" do
      get("/handbook_form_admissions/1").should route_to("handbook_form_admissions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/handbook_form_admissions/1/edit").should route_to("handbook_form_admissions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/handbook_form_admissions").should route_to("handbook_form_admissions#create")
    end

    it "routes to #update" do
      put("/handbook_form_admissions/1").should route_to("handbook_form_admissions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/handbook_form_admissions/1").should route_to("handbook_form_admissions#destroy", :id => "1")
    end

  end
end
