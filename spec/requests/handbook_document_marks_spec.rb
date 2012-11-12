require 'spec_helper'

describe "HandbookDocumentMarks" do
  describe "GET /handbook_document_marks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get handbook_document_marks_path
      response.status.should be(200)
    end
  end
end
