require 'spec_helper'

describe "documents/index" do
  before(:each) do
    assign(:documents, [
      stub_model(Document,
        :docnumber => "Docnumber",
        :source => "Source",
        :name => "Name",
        :summary => "MyText",
        :subject => "Subject",
        :security_classification => "Security Classification",
        :mark => "Mark",
        :registration_number => "Registration Number",
        :location_document => "Location Document",
        :file_number => "File Number"
      ),
      stub_model(Document,
        :docnumber => "Docnumber",
        :source => "Source",
        :name => "Name",
        :summary => "MyText",
        :subject => "Subject",
        :security_classification => "Security Classification",
        :mark => "Mark",
        :registration_number => "Registration Number",
        :location_document => "Location Document",
        :file_number => "File Number"
      )
    ])
  end

  it "renders a list of documents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Docnumber".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Security Classification".to_s, :count => 2
    assert_select "tr>td", :text => "Mark".to_s, :count => 2
    assert_select "tr>td", :text => "Registration Number".to_s, :count => 2
    assert_select "tr>td", :text => "Location Document".to_s, :count => 2
    assert_select "tr>td", :text => "File Number".to_s, :count => 2
  end
end
