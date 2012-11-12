require 'spec_helper'

describe "handbook_document_marks/index" do
  before(:each) do
    assign(:handbook_document_marks, [
      stub_model(HandbookDocumentMark,
        :name => "Name"
      ),
      stub_model(HandbookDocumentMark,
        :name => "Name"
      )
    ])
  end

  it "renders a list of handbook_document_marks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
