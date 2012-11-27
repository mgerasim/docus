require 'spec_helper'

describe "documents/show" do
  before(:each) do
    @document = assign(:document, stub_model(Document,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Docnumber/)
    rendered.should match(/Source/)
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Subject/)
    rendered.should match(/Security Classification/)
    rendered.should match(/Mark/)
    rendered.should match(/Registration Number/)
    rendered.should match(/Location Document/)
    rendered.should match(/File Number/)
  end
end
