require 'spec_helper'

describe "handbook_document_marks/new" do
  before(:each) do
    assign(:handbook_document_mark, stub_model(HandbookDocumentMark,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new handbook_document_mark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => handbook_document_marks_path, :method => "post" do
      assert_select "input#handbook_document_mark_name", :name => "handbook_document_mark[name]"
    end
  end
end
