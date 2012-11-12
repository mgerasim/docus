require 'spec_helper'

describe "HandbookJobpositions" do
  describe "GET /handbook_jobpositions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get handbook_jobpositions_path
      response.status.should be(200)
    end
  end
end
