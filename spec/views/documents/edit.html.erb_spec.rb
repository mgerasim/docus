require 'spec_helper'

describe "documents/edit" do
  before(:each) do
    @document = assign(:document, stub_model(Document,
      :docnumber => "MyString",
      :source => "MyString",
      :name => "MyString",
      :summary => "MyText",
      :subject => "MyString",
      :security_classification => "MyString",
      :mark => "MyString",
      :registration_number => "MyString",
      :location_document => "MyString",
      :file_number => "MyString"
    ))
  end

  it "renders the edit document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => documents_path(@document), :method => "post" do
      assert_select "input#document_docnumber", :name => "document[docnumber]"
      assert_select "input#document_source", :name => "document[source]"
      assert_select "input#document_name", :name => "document[name]"
      assert_select "textarea#document_summary", :name => "document[summary]"
      assert_select "input#document_subject", :name => "document[subject]"
      assert_select "input#document_security_classification", :name => "document[security_classification]"
      assert_select "input#document_mark", :name => "document[mark]"
      assert_select "input#document_registration_number", :name => "document[registration_number]"
      assert_select "input#document_location_document", :name => "document[location_document]"
      assert_select "input#document_file_number", :name => "document[file_number]"
    end
  end
end
