require 'spec_helper'

describe "HandbookAbroadTravelingReasons" do
  describe "GET /handbook_abroad_traveling_reasons" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get handbook_abroad_traveling_reasons_path
      response.status.should be(200)
    end
  end
end
