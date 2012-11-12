require 'spec_helper'

describe "HandbookPlaceEmployees" do
  describe "GET /handbook_place_employees" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get handbook_place_employees_path
      response.status.should be(200)
    end
  end
end
