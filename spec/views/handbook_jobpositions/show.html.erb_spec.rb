require 'spec_helper'

describe "handbook_jobpositions/show" do
  before(:each) do
    @handbook_jobposition = assign(:handbook_jobposition, stub_model(HandbookJobposition,
      :fullname => "Fullname",
      :shortname => "Shortname"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fullname/)
    rendered.should match(/Shortname/)
  end
end
