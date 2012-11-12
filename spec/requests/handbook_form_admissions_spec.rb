require 'spec_helper'

describe "HandbookFormAdmissions" do
  describe "GET /handbook_form_admissions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get handbook_form_admissions_path
      response.status.should be(200)
    end
  end
end
