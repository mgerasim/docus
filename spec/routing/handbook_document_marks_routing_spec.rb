require "spec_helper"

describe HandbookDocumentMarksController do
  describe "routing" do

    it "routes to #index" do
      get("/handbook_document_marks").should route_to("handbook_document_marks#index")
    end

    it "routes to #new" do
      get("/handbook_document_marks/new").should route_to("handbook_document_marks#new")
    end

    it "routes to #show" do
      get("/handbook_document_marks/1").should route_to("handbook_document_marks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/handbook_document_marks/1/edit").should route_to("handbook_document_marks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/handbook_document_marks").should route_to("handbook_document_marks#create")
    end

    it "routes to #update" do
      put("/handbook_document_marks/1").should route_to("handbook_document_marks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/handbook_document_marks/1").should route_to("handbook_document_marks#destroy", :id => "1")
    end

  end
end
