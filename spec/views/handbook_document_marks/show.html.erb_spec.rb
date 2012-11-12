require 'spec_helper'

describe "handbook_document_marks/show" do
  before(:each) do
    @handbook_document_mark = assign(:handbook_document_mark, stub_model(HandbookDocumentMark,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
